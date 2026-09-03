.class public Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;
.super Landroid/app/Dialog;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialogCallbacks$OnDialogLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog$Builder;
    }
.end annotation


# instance fields
.field private display:Landroid/view/Display;

.field private mAlert:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 34
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const-string v0, "alwaysReadCloseOnTouchAttr"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, v1}, Lcn/nubia/redmagickyi/commonui/nubia/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    .line 35
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string/jumbo v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->display:Landroid/view/Display;

    .line 36
    new-instance p2, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p2, p1, p0, v0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;)Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;
    .locals 0

    .line 27
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;

    return-object p0
.end method

.method private resetShowWindowAttributes(Landroid/view/Window;)V
    .locals 5

    .line 92
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 95
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 96
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 97
    invoke-static {}, Lcn/nubia/redmagickyi/util/DeviceUtils;->isPadApp()Z

    move-result v1

    const/4 v3, -0x2

    if-eqz v1, :cond_0

    .line 98
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->zte_dialog_max_width_center:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 99
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p0, 0x11

    .line 100
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    goto :goto_3

    .line 102
    :cond_0
    iget-object v1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->display:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    goto :goto_1

    .line 109
    :cond_1
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-gtz v1, :cond_2

    .line 110
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->zte_dialog_max_width:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_2
    int-to-float p0, v1

    const v1, 0x3f2b851f    # 0.67f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    :goto_0
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 111
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_2

    .line 104
    :cond_3
    :goto_1
    iget p0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    if-gtz p0, :cond_4

    const/4 p0, -0x1

    .line 106
    :cond_4
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 107
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_2
    const/16 p0, 0x50

    .line 113
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 115
    :goto_3
    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p0, p0, 0x400

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 p0, 0x1

    .line 116
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const p0, 0x3e99999a    # 0.3f

    .line 117
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 118
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 74
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 75
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;

    if-eqz p0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->onDismiss()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 87
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->resetShowWindowAttributes(Landroid/view/Window;)V

    .line 88
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->updateUIModeTheme()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 47
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 48
    iget-object p1, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p1, p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->installContent(Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialogCallbacks$OnDialogLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public onDisplayOrientationChanged()V
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->resetShowWindowAttributes(Landroid/view/Window;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 55
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 60
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 41
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 65
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 66
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertController;->onShown()V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/commonui/zte/app/AlertDialog;->resetShowWindowAttributes(Landroid/view/Window;)V

    return-void
.end method
