.class public Lcn/nubia/redmagickyi/care/utils/FloatView;
.super Ljava/lang/Object;
.source "FloatView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FloatView"


# instance fields
.field private buttonScale:Landroid/view/animation/ScaleAnimation;

.field private context:Landroid/content/Context;

.field private floatView:Landroid/view/View;

.field private im_sound:Landroid/widget/ImageView;

.field private layoutParams:Landroid/view/WindowManager$LayoutParams;

.field private logo_bg:Landroid/widget/ImageView;

.field private redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

.field private tvIndex:Landroid/widget/TextView;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->context:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->Instance(Landroid/content/Context;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    .line 45
    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/care/utils/FloatView;->initFloatView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/redmagickyi/care/utils/FloatView;)Landroid/widget/ImageView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->im_sound:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcn/nubia/redmagickyi/care/utils/FloatView;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcn/nubia/redmagickyi/care/utils/FloatView;)Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;
    .locals 0

    .line 31
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    return-object p0
.end method

.method public static setTextMarquee(Landroid/widget/TextView;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 234
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v0, 0x1

    .line 235
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 236
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 237
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 238
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 239
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLines(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public HideFloatView()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->floatView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 220
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->floatView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->floatView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public RemoveFloatView()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->floatView:Landroid/view/View;

    if-eqz p0, :cond_0

    .line 228
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public ShowFloatView(Ljava/lang/String;)V
    .locals 5

    .line 177
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->floatView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 178
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->care_desktop_popup_x:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 179
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getVirtualBarHeigh(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->deviceHeight()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->care_desktop_popup_docker_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->care_desktop_popup_offset_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->deviceHeight()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->care_desktop_popup_docker_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 184
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->floatView:Landroid/view/View;

    iget-object v2, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/care/utils/RedMagicCareUtil;->IsMuteStatus(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->im_sound:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->context:Landroid/content/Context;

    sget v2, Lcn/nubia/redmagickyi/main/R$mipmap;->care_voice_mute:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 188
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->im_sound:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->im_sound:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->im_sound:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 191
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->im_sound:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->context:Landroid/content/Context;

    sget v2, Lcn/nubia/redmagickyi/main/R$drawable;->care_voice_unmute:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->im_sound:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/redmagickyi/care/utils/FloatView$2;

    invoke-direct {v1, p0}, Lcn/nubia/redmagickyi/care/utils/FloatView$2;-><init>(Lcn/nubia/redmagickyi/care/utils/FloatView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 201
    :goto_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->floatView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object p0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->tvIndex:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public UpdateFloatView()V
    .locals 5

    .line 207
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->windowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->floatView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 208
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->care_desktop_popup_x:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 209
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getVirtualBarHeigh(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->deviceHeight()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->care_desktop_popup_docker_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->care_desktop_popup_offset_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->deviceHeight()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->care_desktop_popup_docker_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 214
    :goto_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->windowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->floatView:Landroid/view/View;

    iget-object p0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public initFloatView(Landroid/content/Context;)V
    .locals 5

    .line 50
    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->anim_float:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/ScaleAnimation;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->buttonScale:Landroid/view/animation/ScaleAnimation;

    .line 51
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->windowManager:Landroid/view/WindowManager;

    .line 52
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 54
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 58
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 59
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 60
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 61
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->care_desktop_popup_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 62
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->care_desktop_popup_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 63
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getRealWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->care_desktop_popup_x:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 64
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->getVirtualBarHeigh(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->deviceHeight()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->care_desktop_popup_docker_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->care_desktop_popup_offset_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcn/nubia/redmagickyi/util/ScreenUtils;->deviceHeight()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->care_desktop_popup_docker_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/care/utils/FloatView;->setTrustedOverlay()V

    .line 70
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 71
    sget v0, Lcn/nubia/redmagickyi/main/R$layout;->desk_view_float:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->floatView:Landroid/view/View;

    .line 72
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->rl_float_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 74
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->floatView:Landroid/view/View;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->tv_queue_index:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->tvIndex:Landroid/widget/TextView;

    .line 75
    invoke-static {p1}, Lcn/nubia/redmagickyi/care/utils/FloatView;->setTextMarquee(Landroid/widget/TextView;)V

    .line 76
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->floatView:Landroid/view/View;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_close_float:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->im_sound:Landroid/widget/ImageView;

    .line 77
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->redMagicCareSettingDataManager:Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/database/RedMagicCareSettingDataManager;->getMUTE_VOLUM_STATUS()I

    move-result p1

    if-nez p1, :cond_2

    .line 78
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->im_sound:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->im_sound:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p1, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_1

    .line 79
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->im_sound:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 81
    :cond_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->im_sound:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->context:Landroid/content/Context;

    sget v2, Lcn/nubia/redmagickyi/main/R$drawable;->care_voice_unmute:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->im_sound:Landroid/widget/ImageView;

    new-instance v0, Lcn/nubia/redmagickyi/care/utils/FloatView$1;

    invoke-direct {v0, p0}, Lcn/nubia/redmagickyi/care/utils/FloatView$1;-><init>(Lcn/nubia/redmagickyi/care/utils/FloatView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 91
    :cond_2
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->im_sound:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->context:Landroid/content/Context;

    sget v2, Lcn/nubia/redmagickyi/main/R$mipmap;->care_voice_mute:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    :goto_1
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->floatView:Landroid/view/View;

    sget v0, Lcn/nubia/redmagickyi/main/R$id;->iv_float_image_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->logo_bg:Landroid/widget/ImageView;

    .line 94
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->context:Landroid/content/Context;

    sget v0, Lcn/nubia/redmagickyi/main/R$anim;->loading_anim:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 95
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 97
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->logo_bg:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 98
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->floatView:Landroid/view/View;

    new-instance v0, Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener;

    invoke-direct {v0, p0, v1}, Lcn/nubia/redmagickyi/care/utils/FloatView$FloatingOnTouchListener;-><init>(Lcn/nubia/redmagickyi/care/utils/FloatView;Lcn/nubia/redmagickyi/care/utils/FloatView$1;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 99
    iget-object p1, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->windowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->floatView:Landroid/view/View;

    iget-object p0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTrustedOverlay()V
    .locals 6

    .line 104
    iget-object v0, p0, Lcn/nubia/redmagickyi/care/utils/FloatView;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 p0, 0x0

    new-array v5, p0, [Ljava/lang/Class;

    const-string v1, "setTrustedOverlay"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Lcn/nubia/redmagickyi/commonui/nubia/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method
