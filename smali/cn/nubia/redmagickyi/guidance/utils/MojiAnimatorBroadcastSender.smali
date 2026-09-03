.class public Lcn/nubia/redmagickyi/guidance/utils/MojiAnimatorBroadcastSender;
.super Ljava/lang/Object;
.source "MojiAnimatorBroadcastSender.java"


# static fields
.field private static final BROADCAST_ACTION:Ljava/lang/String; = "com.zte.aiassistant.action.MOJI_ANIMATOR_END"

.field private static final TAG:Ljava/lang/String; = "MojiBroadcastSender"

.field private static final TARGET_PACKAGE:Ljava/lang/String; = "com.zte.aiassistant"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 64
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 70
    const-string p1, "MojiBroadcastSender"

    const-string v1, "Error checking package existence"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    return v0
.end method

.method public static sendMojiAnimatorEndBroadcast(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    .line 25
    const-string v1, "MojiBroadcastSender"

    if-nez p0, :cond_0

    .line 26
    const-string p0, "Context is null, cannot send broadcast"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 31
    :cond_0
    const-string v2, "com.zte.aiassistant"

    invoke-static {p0, v2}, Lcn/nubia/redmagickyi/guidance/utils/MojiAnimatorBroadcastSender;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 32
    const-string p0, "Target package does not exist: com.zte.aiassistant"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 38
    :cond_1
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.zte.aiassistant.action.MOJI_ANIMATOR_END"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 47
    const-string p0, "Broadcast sent successfully. Action: com.zte.aiassistant.action.MOJI_ANIMATOR_END, Target package: com.zte.aiassistant"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 50
    const-string v2, "Failed to send broadcast"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method
