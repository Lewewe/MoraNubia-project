.class Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$AchievementDialog;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "AchievementNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AchievementDialog"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 275
    sget v0, Lcn/nubia/redmagickyi/main/R$style;->CustomDialog2:I

    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final getContentView()I
    .locals 0

    .line 280
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->layout_loading:I

    return p0
.end method

.method public initView(Landroid/view/Window;)V
    .locals 2

    .line 285
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->loading_rotate:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 286
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$anim;->loading_anim:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 287
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 289
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->loading_text:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/achievement/util/AchievementNetworkManager$AchievementDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 290
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->mail_loading_content:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final onWindowAttributeUpdate(Landroid/view/Window;)V
    .locals 1

    .line 295
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/4 v0, 0x0

    .line 296
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/4 v0, -0x2

    .line 297
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 298
    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 299
    invoke-virtual {p1, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
