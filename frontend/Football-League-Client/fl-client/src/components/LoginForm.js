import React, { useState } from 'react';
import { FaUser, FaEnvelope, FaLock } from "react-icons/fa";
import './LoginForm.css';

const LoginForm = () => {
    const [action, setAction] = useState('Sign Up');

    return (
        <div className="container">
            <div className="header">
                <div className="text">{action}</div>
                <div className="underline"></div>
            </div>
            <div className="inputs">
                {action === "Login" ? null : (
                    <div className="input">
                        <FaUser className="icon" />
                        <input type="text" placeholder="Name"/>
                    </div>
                )}

                <div className="input">
                    <FaEnvelope className="icon" />
                    <input type="email" placeholder="Email"/>
                </div>

                <div className="input">
                    <FaLock className="icon" />
                    <input type="password" placeholder="Password"/>
                </div>
            </div>

            {action === "Sign Up" ? null : (
                <div className="forgot-password">
                    Forgot Password?<span> Click Here</span>
                </div>
            )}

            <div className="submit-container">
                <div className={action === "Login" ? "submit gray" : "submit"} onClick={() => setAction("Sign Up")}>
                    Sign Up
                </div>
                <div className={action === "Sign Up" ? "submit gray" : "submit"} onClick={() => setAction("Login")}>
                    Login
                </div>
            </div>
        </div>
    );
};

export default LoginForm;
