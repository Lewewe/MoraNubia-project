.class public abstract Lcn/nubia/redmagickyi/crop/base/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    sget v0, Lcn/nubia/redmagickyi/main/R$style;->CustomDialog2:I

    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/crop/base/BaseDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x1

    .line 29
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/crop/base/BaseDialog;->requestWindowFeature(I)Z

    .line 30
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/base/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 31
    invoke-virtual {p0, v2}, Lcn/nubia/redmagickyi/crop/base/BaseDialog;->setCanceledOnTouchOutside(Z)V

    .line 32
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/base/BaseDialog;->getContentView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/crop/base/BaseDialog;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/base/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 35
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 36
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 37
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 39
    iget p1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v2, -0x1

    if-gtz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    iget p1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 40
    iget p1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gtz p1, :cond_1

    goto :goto_1

    :cond_1
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_1
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 41
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p1, p1, 0x400

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 43
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 45
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/base/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 47
    invoke-direct {p0}, Lcn/nubia/redmagickyi/crop/base/BaseDialog;->hideBottomUIMenu()V

    .line 49
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/base/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/crop/base/BaseDialog;->onWindowAttributeUpdate(Landroid/view/Window;)V

    return-void
.end method

.method private hideBottomUIMenu()V
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/base/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 82
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/base/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x1006

    .line 84
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method public abstract getContentView()I
.end method

.method public abstract initView(Landroid/view/Window;)V
.end method

.method public onWindowAttributeUpdate(Landroid/view/Window;)V
    .locals 0

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/base/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/crop/base/BaseDialog;->initView(Landroid/view/Window;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 61
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/base/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/crop/base/BaseDialog;->initView(Landroid/view/Window;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 66
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/crop/base/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/crop/base/BaseDialog;->initView(Landroid/view/Window;)V

    return-void
.end method
