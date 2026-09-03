.class public Lcn/nubia/oauthsdk/ui/ProcessWebView;
.super Landroid/webkit/WebView;
.source "ProcessWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/oauthsdk/ui/ProcessWebView$WebChromeClient;
    }
.end annotation


# instance fields
.field private progressbar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 18
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x1010078

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcn/nubia/oauthsdk/ui/ProcessWebView;->progressbar:Landroid/widget/ProgressBar;

    .line 20
    new-instance p1, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/16 v1, 0x14

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {p1, v3, v1, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    new-instance p1, Landroid/graphics/drawable/ClipDrawable;

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x10000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 22
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/ProcessWebView;->progressbar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    iget-object p1, p0, Lcn/nubia/oauthsdk/ui/ProcessWebView;->progressbar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/ui/ProcessWebView;->addView(Landroid/view/View;)V

    .line 24
    new-instance p1, Lcn/nubia/oauthsdk/ui/ProcessWebView$WebChromeClient;

    invoke-direct {p1, p0}, Lcn/nubia/oauthsdk/ui/ProcessWebView$WebChromeClient;-><init>(Lcn/nubia/oauthsdk/ui/ProcessWebView;)V

    invoke-virtual {p0, p1}, Lcn/nubia/oauthsdk/ui/ProcessWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/oauthsdk/ui/ProcessWebView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 12
    iget-object p0, p0, Lcn/nubia/oauthsdk/ui/ProcessWebView;->progressbar:Landroid/widget/ProgressBar;

    return-object p0
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 2

    .line 44
    iget-object v0, p0, Lcn/nubia/oauthsdk/ui/ProcessWebView;->progressbar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 45
    iput p1, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 46
    iput p2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 47
    iget-object v1, p0, Lcn/nubia/oauthsdk/ui/ProcessWebView;->progressbar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    return-void
.end method
