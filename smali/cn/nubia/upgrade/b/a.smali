.class public Lcn/nubia/upgrade/b/a;
.super Ljava/lang/Object;
.source "VersionDataParser.java"


# direct methods
.method public static a(Ljava/lang/String;)Lcn/nubia/upgrade/model/VersionData;
    .locals 19

    move-object/from16 v0, p0

    const-string v1, "silent_flag"

    const-string v2, "package_name"

    const-string v3, "file_size"

    const-string v4, "check_sum_patch"

    const-string v5, "is_force"

    const-string v6, "to_version_code"

    const-string v7, "from_version_code"

    const-string v8, "check_sum_new"

    const-string v9, "version"

    const-string v10, "apk_url"

    const-string v11, "upgrade_content"

    const-string v12, "upgrade_time"

    const-string v13, "update"

    const-string v14, "code is "

    const-string v15, "VersionDataParser"

    if-eqz v0, :cond_13

    .line 1
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    goto/16 :goto_4

    :cond_0
    move-object/from16 v17, v14

    .line 7
    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    .line 8
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    move-object/from16 v18, v1

    const/4 v1, 0x0

    if-nez v0, :cond_11

    const-string v0, "data"

    .line 10
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 12
    new-instance v14, Lcn/nubia/upgrade/model/VersionData;

    invoke-direct {v14}, Lcn/nubia/upgrade/model/VersionData;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 15
    :try_start_1
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 17
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 21
    :cond_1
    invoke-virtual {v14, v1}, Lcn/nubia/upgrade/model/VersionData;->setUpdate(Z)V

    if-nez v1, :cond_2

    return-object v14

    .line 26
    :cond_2
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 27
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {v14, v1}, Lcn/nubia/upgrade/model/VersionData;->setUpgradeTime(Ljava/lang/String;)V

    .line 31
    :cond_3
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 33
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-virtual {v14, v1}, Lcn/nubia/upgrade/model/VersionData;->setUpgradeContent(Ljava/lang/String;)V

    .line 37
    :cond_4
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 38
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-virtual {v14, v1}, Lcn/nubia/upgrade/model/VersionData;->setApkUrl(Ljava/lang/String;)V

    if-eqz v1, :cond_5

    .line 40
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    const-string v1, "versionData no apk_url empty"

    .line 41
    invoke-static {v15, v1}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v1, "versionData no apk_url error!"

    .line 45
    invoke-static {v15, v1}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_7
    :goto_0
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 48
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {v14, v1}, Lcn/nubia/upgrade/model/VersionData;->setVersion(Ljava/lang/String;)V

    .line 52
    :cond_8
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 53
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {v14, v1}, Lcn/nubia/upgrade/model/VersionData;->setCheckSumNew(Ljava/lang/String;)V

    .line 56
    :cond_9
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 58
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v14, v1}, Lcn/nubia/upgrade/model/VersionData;->setFromVersionCode(Ljava/lang/String;)V

    .line 61
    :cond_a
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 63
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {v14, v1}, Lcn/nubia/upgrade/model/VersionData;->setToVersionCode(Ljava/lang/String;)V

    .line 66
    :cond_b
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 67
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 68
    invoke-virtual {v14, v1}, Lcn/nubia/upgrade/model/VersionData;->setIsForce(Z)V

    .line 70
    :cond_c
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 71
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {v14, v1}, Lcn/nubia/upgrade/model/VersionData;->setCheckSumPatch(Ljava/lang/String;)V

    .line 74
    :cond_d
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 75
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 76
    invoke-virtual {v14, v3, v4}, Lcn/nubia/upgrade/model/VersionData;->setFileSize(J)V

    .line 78
    :cond_e
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 79
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcn/nubia/upgrade/model/VersionData;->setPackageName(Ljava/lang/String;)V

    :cond_f
    move-object/from16 v1, v18

    .line 82
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 83
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v14, v0}, Lcn/nubia/upgrade/model/VersionData;->setSilentFlag(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_10
    move-object v15, v14

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_11
    const/16 v2, 0x7d4

    if-ne v0, v2, :cond_12

    .line 88
    :try_start_2
    new-instance v2, Lcn/nubia/upgrade/model/VersionData;

    invoke-direct {v2}, Lcn/nubia/upgrade/model/VersionData;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 89
    :try_start_3
    invoke-virtual {v2, v1}, Lcn/nubia/upgrade/model/VersionData;->setUpdate(Z)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v15, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v14, v2

    :goto_1
    move-object/from16 v16, v14

    goto :goto_2

    .line 92
    :cond_12
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message"

    .line 93
    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    invoke-static {v15, v0}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    const/4 v15, 0x0

    goto :goto_3

    :catch_2
    move-exception v0

    const/16 v16, 0x0

    .line 100
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, "ParseJson Error!!!"

    .line 101
    invoke-static {v15, v0}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v15, v16

    :goto_3
    return-object v15

    :cond_13
    :goto_4
    const-string v0, "Json Null or Empty!!!"

    .line 102
    invoke-static {v15, v0}, Lcn/nubia/upgrade/c/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method
