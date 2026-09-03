.class Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$SkinDialog;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "SkinNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SkinDialog"
.end annotation


# instance fields
.field private isTransparentBackground:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 315
    sget v0, Lcn/nubia/redmagickyi/main/R$style;->CustomDialog2:I

    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 316
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$SkinDialog;->isTransparentBackground:Z

    .line 317
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$SkinDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$SkinDialog;->updateWindowAttribute(Landroid/view/Window;)V

    return-void
.end method


# virtual methods
.method public final getContentView()I
    .locals 0

    .line 322
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->layout_loading:I

    return p0
.end method

.method public initView(Landroid/view/Window;)V
    .locals 2

    .line 327
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->loading_rotate:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 328
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$anim;->loading_anim:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 329
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 331
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->loading_text:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$SkinDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 332
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->mail_loading_content:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final updateWindowAttribute(Landroid/view/Window;)V
    .locals 1

    .line 336
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 337
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/skin/util/SkinNetworkManager$SkinDialog;->isTransparentBackground:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 338
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    :cond_0
    const/4 p0, -0x2

    .line 340
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 341
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 342
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
