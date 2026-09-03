.class public Lcn/nubia/redmagickyi/view/RedmagicKyiWebview;
.super Landroid/webkit/WebView;
.source "RedmagicKyiWebview.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/RedmagicKyiWebview;->initDensity(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/RedmagicKyiWebview;->initDensity(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/RedmagicKyiWebview;->initDensity(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 30
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/view/RedmagicKyiWebview;->initDensity(Landroid/content/Context;)V

    return-void
.end method

.method private initDensity(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-static {p1}, Lcn/nubia/redmagickyi/util/DensityCustomer;->initDensity(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    return-void
.end method
