.class public Lcn/nubia/accountsdk/common/DensityUtil;
.super Ljava/lang/Object;
.source "DensityUtil.java"


# static fields
.field private static mPubKeyArray:Ljava/lang/String; = "EBAQUAA4GNADCBiQKBgQDG1"

.field private static mPubKeyArrayRl:Ljava/lang/String; = "EBAQUAA4GNADCBi"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static getmPubKeyArray(Z)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 27
    sget-object p0, Lcn/nubia/accountsdk/common/DensityUtil;->mPubKeyArray:Ljava/lang/String;

    return-object p0

    .line 29
    :cond_0
    sget-object p0, Lcn/nubia/accountsdk/common/DensityUtil;->mPubKeyArrayRl:Ljava/lang/String;

    return-object p0
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 0

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static setmPubKeyArray(Ljava/lang/String;)V
    .locals 0

    .line 34
    sput-object p0, Lcn/nubia/accountsdk/common/DensityUtil;->mPubKeyArray:Ljava/lang/String;

    return-void
.end method
