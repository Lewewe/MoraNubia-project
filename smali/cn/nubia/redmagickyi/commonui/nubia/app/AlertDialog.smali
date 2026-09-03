.class public Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;
.super Lcn/nubia/redmagickyi/commonui/nubia/app/Dialog;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog$Builder;
    }
.end annotation


# static fields
.field public static final LAYOUT_HINT_NONE:I = 0x0

.field public static final LAYOUT_HINT_SIDE:I = 0x1


# instance fields
.field private mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 81
    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    .line 93
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 97
    invoke-static {p1, p2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/redmagickyi/commonui/nubia/app/Dialog;-><init>(Landroid/content/Context;IZ)V

    .line 100
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string p2, "alwaysReadCloseOnTouchAttr"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3, p3}, Lcn/nubia/redmagickyi/commonui/nubia/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    .line 101
    new-instance p1, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-direct {p1, p2, p0, p3}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object p1, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    .line 102
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x50

    invoke-virtual {p0, p1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 3

    const/4 v0, 0x0

    .line 106
    invoke-static {p1, v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcn/nubia/redmagickyi/commonui/nubia/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 108
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "alwaysReadCloseOnTouchAttr"

    invoke-static {v1, v2, v0, v0}, Lcn/nubia/redmagickyi/commonui/nubia/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ)Ljava/lang/Object;

    .line 109
    invoke-virtual {p0, p2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->setCancelable(Z)V

    .line 110
    invoke-virtual {p0, p3}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 111
    new-instance p2, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p3

    invoke-direct {p2, p1, p0, p3}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object p2, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    .line 112
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x50

    invoke-virtual {p0, p1}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;)Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    return-object p0
.end method

.method private resetShowWindowAttributes(Landroid/view/Window;)V
    .locals 2

    .line 388
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 389
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 390
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 391
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 393
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 394
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    return-void
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 2

    const/high16 v0, 0x1000000

    if-lt p1, v0, :cond_0

    return p1

    .line 119
    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v0, 0x1010309

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 122
    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method public getAlertController()Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;
    .locals 0

    .line 385
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    return-object p0
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 0

    .line 137
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    .line 146
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object p0

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 359
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/commonui/nubia/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 360
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->installContent()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 365
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 368
    :cond_0
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/commonui/nubia/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 373
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 376
    :cond_0
    invoke-super {p0, p1, p2}, Lcn/nubia/redmagickyi/commonui/nubia/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public setAnimPanelBackground(I)V
    .locals 0

    .line 296
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setAnimPanelBackground(I)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 225
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1

    .line 211
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 266
    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 234
    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x2

    .line 279
    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x2

    .line 243
    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x3

    .line 292
    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x3

    .line 252
    invoke-virtual {p0, v0, p1, p2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    return-void
.end method

.method public setButtonBackground(III)V
    .locals 1

    if-nez p1, :cond_0

    .line 301
    sget p1, Lcn/nubia/redmagickyi/main/R$drawable;->nubia_btn_default_material:I

    :cond_0
    if-nez p2, :cond_1

    .line 304
    sget p2, Lcn/nubia/redmagickyi/main/R$drawable;->nubia_btn_default_material:I

    :cond_1
    if-nez p3, :cond_2

    .line 307
    sget p3, Lcn/nubia/redmagickyi/main/R$drawable;->nubia_btn_default_material:I

    .line 309
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setNubiaButtonBackground(III)V

    .line 310
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->resetNubiaAlertDialogLayout()V

    return-void
.end method

.method setButtonPanelLayoutHint(I)V
    .locals 0

    .line 197
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setButtonPanelLayoutHint(I)V

    return-void
.end method

.method public setButtonTextColor(II)V
    .locals 0

    .line 314
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setButtonTextColor(II)V

    return-void
.end method

.method public setContentDividerVisible(Z)V
    .locals 0

    .line 189
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setContentDivider(Z)V

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    .line 159
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    return-void
.end method

.method public setIcon(I)V
    .locals 0

    .line 335
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 339
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconAttribute(I)V
    .locals 3

    .line 348
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 349
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 350
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setIcon(I)V

    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0

    .line 354
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setInverseBackgroundForced(Z)V

    return-void
.end method

.method public setMatchParentWidth(Z)V
    .locals 0

    .line 322
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setMatchParentWidth(Z)V

    return-void
.end method

.method public setMaxHeightRatio(F)V
    .locals 0

    .line 318
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setMaxHeightRatio(F)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 163
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setParentPanelMargin(IIII)V
    .locals 0

    .line 326
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setParentPanelMargin(IIII)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcn/nubia/redmagickyi/commonui/nubia/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 152
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 170
    iget-object p0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setView(Landroid/view/View;)V

    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6

    .line 185
    iget-object v0, p0, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->mAlert:Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertController;->setView(Landroid/view/View;IIII)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 381
    invoke-super {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/Dialog;->show()V

    .line 382
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/commonui/nubia/app/AlertDialog;->resetShowWindowAttributes(Landroid/view/Window;)V

    return-void
.end method
