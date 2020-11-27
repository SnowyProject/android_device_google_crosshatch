/*
 * Copyright (C) 2020 ArrowOS
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.lineageos.settings.display;

import android.content.SharedPreferences;

import org.lineageos.settings.utils.FileUtils;

public final class KcalUtils {

    public static final String KCAL_ENABLE_NODE = "/sys/module/msm_drm/parameters/kcal_enable";
    public static final String KCAL_R_NODE = "/sys/module/msm_drm/parameters/kcal_red";
    public static final String KCAL_G_NODE = "/sys/module/msm_drm/parameters/kcal_green";
    public static final String KCAL_B_NODE = "/sys/module/msm_drm/parameters/kcal_blue";
    public static final String KCAL_SATURATION_NODE = "/sys/module/msm_drm/parameters/kcal_sat";
    public static final String KCAL_HUE_NODE = "/sys/module/msm_drm/parameters/kcal_hue";
    public static final String KCAL_VALUE_NODE = "/sys/module/msm_drm/parameters/kcal_val";
    public static final String KCAL_CONTRAST_NODE = "/sys/module/msm_drm/parameters/kcal_cont";


    public static void writeConfigToNode(String node, int position, int value) {
        String mNewNodeData = "";

        switch(position) {
            case 0:
                mNewNodeData = String.valueOf(value);
                break;
            case 1:
            case 2:
            case 3:
        }

        FileUtils.writeLine(node, mNewNodeData);
    }

    // Get the value of the given position
    // 0 is the full node value
    // 1, 2 and 3 will return the first, second and third string divided by an space in the specified node
    public static String getNodeData(String node, int position) {
        String mNodeData = FileUtils.readOneLine(node);
        switch(position) {
            case 0:
                return mNodeData;
            case 1:
            case 2:
            case 3:
                return mNodeData.split(" ")[position - 1];
            default:
                return null;
        }
    }

    public static void writeCurrentSettings(SharedPreferences sharedPrefs) {
        FileUtils.writeLine(KcalUtils.KCAL_ENABLE_NODE,
            sharedPrefs.getBoolean("kcal_enable", false) ? "0" : "1");

        KcalUtils.writeConfigToNode(KcalUtils.KCAL_R_NODE, 0, sharedPrefs.getInt("red_slider", 256));
        KcalUtils.writeConfigToNode(KcalUtils.KCAL_G_NODE, 0, sharedPrefs.getInt("green_slider", 256));
        KcalUtils.writeConfigToNode(KcalUtils.KCAL_B_NODE, 0, sharedPrefs.getInt("blue_slider", 256));
        KcalUtils.writeConfigToNode(KcalUtils.KCAL_SATURATION_NODE, 0, sharedPrefs.getInt("saturation_slider", 255));
        KcalUtils.writeConfigToNode(KcalUtils.KCAL_HUE_NODE, 0, sharedPrefs.getInt("hue_slider", 0));
        KcalUtils.writeConfigToNode(KcalUtils.KCAL_VALUE_NODE, 0, sharedPrefs.getInt("value_slider", 255));
        KcalUtils.writeConfigToNode(KcalUtils.KCAL_CONTRAST_NODE, 0, sharedPrefs.getInt("contrast_slider", 255));
    }

    public static boolean isKcalSupported() {
        return FileUtils.fileExists(KCAL_ENABLE_NODE);
    }
}
