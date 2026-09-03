.class public Lcn/nubia/redmagickyi/user/utils/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field public static final PHONE_GOOGLE:Ljava/lang/String; = "google"

.field public static final PHONE_HTC:Ljava/lang/String; = "htc"

.field public static final PHONE_HUAWEI1:Ljava/lang/String; = "Huawei"

.field public static final PHONE_HUAWEI2:Ljava/lang/String; = "HUAWEI"

.field public static final PHONE_HUAWEI3:Ljava/lang/String; = "HONOR"

.field public static final PHONE_IQOO:Ljava/lang/String; = "iqoo"

.field public static final PHONE_LENOVO:Ljava/lang/String; = "lenovo"

.field public static final PHONE_LE_MOBILE:Ljava/lang/String; = "LeMobile"

.field public static final PHONE_LG:Ljava/lang/String; = "lg"

.field public static final PHONE_MEIZU:Ljava/lang/String; = "Meizu"

.field public static final PHONE_NOVA:Ljava/lang/String; = "nova"

.field public static final PHONE_NUBIA:Ljava/lang/String; = "nubia"

.field public static final PHONE_OPPO:Ljava/lang/String; = "OPPO"

.field public static final PHONE_REDMI:Ljava/lang/String; = "Redmi"

.field public static final PHONE_SAMSUNG:Ljava/lang/String; = "samsung"

.field public static final PHONE_SONY:Ljava/lang/String; = "sony"

.field public static final PHONE_VIVO:Ljava/lang/String; = "vivo"

.field public static final PHONE_XIAOMI:Ljava/lang/String; = "xiaomi"

.field private static final TAG:Ljava/lang/String; = "DeviceUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceBrand()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Brand of device is\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static isMIUI()Z
    .locals 2

    .line 50
    const-string/jumbo v0, "xiaomi"

    invoke-static {}, Lcn/nubia/redmagickyi/user/utils/DeviceUtils;->getDeviceBrand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Redmi"

    invoke-static {}, Lcn/nubia/redmagickyi/user/utils/DeviceUtils;->getDeviceBrand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
