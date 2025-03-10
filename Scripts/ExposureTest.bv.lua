----------------------------------------------------------------------------------------------------
--
-- Copyright (c) Contributors to the Open 3D Engine Project.
-- For complete copyright and license terms please see the LICENSE at the root of this distribution.
--
-- SPDX-License-Identifier: Apache-2.0 OR MIT
--
--
--
----------------------------------------------------------------------------------------------------

RunScript("scripts/TestEnvironment.luac")

g_screenshotOutputFolder = ResolvePath('@user@/Scripts/Screenshots/' .. g_testEnv .. '/ExposureTest/')
Print('Saving screenshots to ' .. NormalizePath(g_screenshotOutputFolder))

OpenSample('Features/Exposure')
ResizeViewport(800, 600)
SelectImageComparisonToleranceLevel("Level E")

-- eye adaptation has a default speed. we are waiting 9 seconds for the sample to reach stable state
IdleSeconds(9)

CaptureScreenshot(g_screenshotOutputFolder .. '/screenshot_exposure.png')

OpenSample(nil)
