.class Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadingDialog;
.super Lcn/nubia/redmagickyi/view/BaseDialog;
.source "VideoListNetworkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadingDialog"
.end annotation


# instance fields
.field private isNonFocused:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 160
    sget v0, Lcn/nubia/redmagickyi/main/R$style;->NonFocusedCustomDialog:I

    goto :goto_0

    :cond_0
    sget v0, Lcn/nubia/redmagickyi/main/R$style;->CustomDialog2:I

    :goto_0
    invoke-direct {p0, p1, v0}, Lcn/nubia/redmagickyi/view/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 161
    iput-boolean p2, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadingDialog;->isNonFocused:Z

    .line 162
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadingDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadingDialog;->updateWindowAttribute(Landroid/view/Window;)V

    return-void
.end method

.method private getScreenHeight()I
    .locals 1

    .line 212
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 213
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final getContentView()I
    .locals 0

    .line 167
    sget p0, Lcn/nubia/redmagickyi/main/R$layout;->layout_loading:I

    return p0
.end method

.method public initView(Landroid/view/Window;)V
    .locals 2

    .line 172
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->loading_rotate:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 173
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$anim;->loading_anim:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 174
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 176
    sget p1, Lcn/nubia/redmagickyi/main/R$id;->loading_text:I

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 177
    sget p1, Lcn/nubia/redmagickyi/main/R$string;->mail_loading_content:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 182
    invoke-super {p0}, Lcn/nubia/redmagickyi/view/BaseDialog;->onBackPressed()V

    .line 183
    invoke-static {}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager;->access$200()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$Callback;

    .line 184
    invoke-interface {v0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$Callback;->onBackPressed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateWindowAttribute(Landroid/view/Window;)V
    .locals 5

    .line 189
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadingDialog;->isNonFocused:Z

    const/4 v1, -0x2

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v2, 0x0

    .line 191
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 192
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x8

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v2, -0x1

    .line 193
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 194
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadingDialog;->getScreenHeight()I

    move-result v2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcn/nubia/redmagickyi/main/R$dimen;->header_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 195
    :goto_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v1, 0x50

    .line 196
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 197
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 199
    sget v0, Lcn/nubia/redmagickyi/main/R$id;->loading_layout:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 201
    invoke-direct {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadingDialog;->getScreenHeight()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/nubia/redmagickyi/main/R$dimen;->loading_bg_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/mainpage/dancestudio/util/VideoListNetworkManager$LoadingDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->header_height:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v1, p0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 202
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 204
    :cond_1
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    .line 205
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 206
    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 207
    invoke-virtual {p1, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_1
    return-void
.end method
