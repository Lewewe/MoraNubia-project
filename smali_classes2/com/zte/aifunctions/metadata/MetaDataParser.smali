.class Lcom/zte/aifunctions/metadata/MetaDataParser;
.super Ljava/lang/Object;
.source "MetaDataParser.java"


# static fields
.field private static final INSTALLED_AVAILABLE:Ljava/lang/String; = "installed_available"

.field private static final TAG:Ljava/lang/String; = "AiFunctionMetaDataParser"


# instance fields
.field private packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/zte/aifunctions/metadata/MetaDataParser;->packageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private getPart([Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    .line 176
    array-length p0, p1

    if-lt p2, p0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    aget-object p0, p1, p2

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private parseBooleanOrDefaultFalse(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 189
    const-string p0, "false"

    return-object p0

    .line 191
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parseIntentFlags(Ljava/lang/String;)I
    .locals 8

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v1, 0x10000000

    const/4 v2, 0x0

    if-nez v0, :cond_6

    .line 145
    const-string v0, "\\|"

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 146
    array-length v0, p1

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_5

    aget-object v6, p1, v4

    .line 147
    invoke-direct {p0, v6}, Lcom/zte/aifunctions/metadata/MetaDataParser;->safeTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 148
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_4

    .line 150
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_1
    move v6, v3

    goto :goto_2

    :sswitch_0
    const-string v7, "FLAG_ACTIVITY_NEW_TASK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x3

    goto :goto_2

    :sswitch_1
    const-string v7, "FLAG_ACTIVITY_SINGLE_TOP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x2

    goto :goto_2

    :sswitch_2
    const-string v7, "FLAG_ACTIVITY_CLEAR_TOP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v6, 0x1

    goto :goto_2

    :sswitch_3
    const-string v7, "FLAG_ACTIVITY_CLEAR_TASK"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    move v6, v2

    :goto_2
    packed-switch v6, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    or-int/2addr v5, v1

    goto :goto_4

    :pswitch_1
    const/high16 v6, 0x20000000

    goto :goto_3

    :pswitch_2
    const/high16 v6, 0x4000000

    goto :goto_3

    :pswitch_3
    const v6, 0x8000

    :goto_3
    or-int/2addr v5, v6

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    move v2, v5

    :cond_6
    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x451229cc -> :sswitch_3
        -0x2b84b55a -> :sswitch_2
        0x1b61629b -> :sswitch_1
        0x5d26d601 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseOne(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/aifunctions/metadata/entry/MetaData;
    .locals 8

    .line 108
    const-string p1, ";"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 109
    array-length p2, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge p2, v2, :cond_0

    return-object v1

    :cond_0
    const/4 p2, 0x0

    .line 114
    aget-object v3, p1, p2

    invoke-direct {p0, v3}, Lcom/zte/aifunctions/metadata/MetaDataParser;->safeTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 115
    aget-object v5, p1, v4

    invoke-direct {p0, v5}, Lcom/zte/aifunctions/metadata/MetaDataParser;->safeTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 116
    array-length v6, p1

    const/4 v7, 0x3

    if-lt v6, v7, :cond_1

    aget-object p1, p1, v2

    invoke-direct {p0, p1}, Lcom/zte/aifunctions/metadata/MetaDataParser;->safeTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 118
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 122
    :cond_2
    new-instance v1, Lcom/zte/aifunctions/metadata/entry/MetaData;

    invoke-direct {v1}, Lcom/zte/aifunctions/metadata/entry/MetaData;-><init>()V

    .line 123
    invoke-virtual {v1, v5}, Lcom/zte/aifunctions/metadata/entry/MetaData;->setLaunchAction(Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/zte/aifunctions/metadata/MetaDataParser;->parseIntentFlags(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/zte/aifunctions/metadata/entry/MetaData;->setLaunchFlags(I)V

    .line 127
    const-string p1, "installed_available"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 128
    invoke-virtual {v1, v4}, Lcom/zte/aifunctions/metadata/entry/MetaData;->setAvailable(Z)V

    return-object v1

    .line 134
    :cond_3
    const-string p1, "\\|"

    invoke-virtual {v3, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-direct {p0, p1, p2}, Lcom/zte/aifunctions/metadata/MetaDataParser;->getPart([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/zte/aifunctions/metadata/MetaDataParser;->safeTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 136
    invoke-direct {p0, p1, v4}, Lcom/zte/aifunctions/metadata/MetaDataParser;->getPart([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/aifunctions/metadata/MetaDataParser;->safeTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-direct {p0, p1, v2}, Lcom/zte/aifunctions/metadata/MetaDataParser;->getPart([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zte/aifunctions/metadata/MetaDataParser;->safeTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zte/aifunctions/metadata/MetaDataParser;->parseBooleanOrDefaultFalse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 138
    invoke-static {p2, p0}, Lcn/nubia/redmagickyi/util/FeatureUtils;->getZteFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/zte/aifunctions/metadata/entry/MetaData;->setAvailable(Z)V

    :cond_4
    :goto_1
    return-object v1
.end method

.method private safeTrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 181
    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getMetaData(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 47
    :try_start_0
    iget-object p0, p0, Lcom/zte/aifunctions/metadata/MetaDataParser;->packageManager:Landroid/content/pm/PackageManager;

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 48
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".FUNCTIONS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "parse package "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " failed. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AiFunctionMetaDataParser"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getVersionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 38
    :try_start_0
    iget-object p0, p0, Lcom/zte/aifunctions/metadata/MetaDataParser;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 39
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 41
    :catchall_0
    const-string p0, ""

    return-object p0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/zte/aifunctions/metadata/entry/MetaData;",
            ">;"
        }
    .end annotation

    .line 66
    const-string v0, ""

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 72
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    move v3, p2

    .line 73
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 74
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_3

    .line 77
    :cond_1
    invoke-virtual {v4}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    move v6, p2

    .line 80
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v6, v7, :cond_6

    .line 82
    :try_start_1
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONArray;->optString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 83
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_2

    .line 85
    :cond_3
    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 86
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_2

    .line 88
    :cond_4
    invoke-direct {p0, v7, v8}, Lcom/zte/aifunctions/metadata/MetaDataParser;->parseOne(Ljava/lang/String;Ljava/lang/String;)Lcom/zte/aifunctions/metadata/entry/MetaData;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 90
    invoke-virtual {v8, p1}, Lcom/zte/aifunctions/metadata/entry/MetaData;->setPackageName(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v8, v7}, Lcom/zte/aifunctions/metadata/entry/MetaData;->setFunctionKey(Ljava/lang/String;)V

    .line 92
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    :cond_7
    return-object v1
.end method
