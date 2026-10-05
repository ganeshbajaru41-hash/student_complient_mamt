const express = require("express");
const cors = require("cors");
const path = require("path");

require("dotenv").config();


const app = express();


// ============================================
// MIDDLEWARE
// ============================================

app.use(cors());

app.use(express.json());

app.use(
    express.urlencoded({
        extended: true
    })
);


// ============================================
// STATIC UPLOADS
// ============================================

app.use(
    "/uploads",
    express.static(
        path.join(
            __dirname,
            "uploads"
        )
    )
);


// ============================================
// ROUTES
// ============================================

const academicYearRoutes =
    require("./routes/academicYearRoutes");

const adminRoutes =
    require("./routes/adminRoutes");

const complaintRoutes =
    require("./routes/complaintRoutes");

const registeredComplaintRoutes =
    require("./routes/registeredComplaintRoutes");

const staffRoutes =
    require("./routes/staffRoutes");

const streamRoutes =
    require("./routes/streamRoutes");

const studentRoutes =
    require("./routes/studentRoutes");


// ============================================
// API ROUTES
// ============================================

app.use(
    "/api/academic-years",
    academicYearRoutes
);

app.use(
    "/api/admins",
    adminRoutes
);

app.use(
    "/api/complaints",
    complaintRoutes
);

app.use(
    "/api/registered-complaints",
    registeredComplaintRoutes
);

app.use(
    "/api/staff",
    staffRoutes
);

app.use(
    "/api/streams",
    streamRoutes
);

app.use(
    "/api/students",
    studentRoutes
);


// ============================================
// HOME
// ============================================

app.get("/", (req, res) => {

    res.json({

        success: true,

        message:
            "Student Complaint Management API is running",

        version: "1.0.0"

    });

});


// ============================================
// ERROR HANDLER
// ============================================

app.use(
    (err, req, res, next) => {

        console.error(err);

        res.status(500).json({

            success: false,

            message:
                err.message ||
                "Internal Server Error"

        });

    }
);


// ============================================
// SERVER
// ============================================

const PORT =
    process.env.PORT || 5000;


app.listen(
    PORT,
    () => {

        console.log(
            `Server running at http://localhost:${PORT}`
        );

    }
);