.class public Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;
.super Landroid/view/SurfaceView;
.source "IconForgroundView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory$OnRingListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView$OnViewClickedListener;
    }
.end annotation


# static fields
.field public static final OPERATOR_AT_LEFT:I = 0x2

.field public static final OPERATOR_AT_RIGHT:I = 0x3

.field public static final OPERATOR_HIDE:I = 0x0

.field public static final OPERATOR_SHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IconForgroundView"


# instance fields
.field private bitmapCancel:Landroid/graphics/Bitmap;

.field private bitmapMuteOff:Landroid/graphics/Bitmap;

.field private bitmapMuteOn:Landroid/graphics/Bitmap;

.field private clipedPath:Landroid/graphics/Path;

.field private isCreated:Z

.field private isLargeIcon:Z

.field private isModelReady:Z

.field private isMute:Z

.field private matrix:Landroid/graphics/Matrix;

.field private onViewClickedListener:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView$OnViewClickedListener;

.field private operatorLocation:I

.field private paint:Landroid/graphics/Paint;

.field private performRolling:Z

.field private rectCancelBtn:Landroid/graphics/RectF;

.field private rectMuteBtn:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 30
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->operatorLocation:I

    .line 40
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 30
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->operatorLocation:I

    .line 45
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 30
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->operatorLocation:I

    .line 50
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->init()V

    return-void
.end method

.method private getCancelBtnRect(II)Landroid/graphics/RectF;
    .locals 2

    .line 239
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->rectCancelBtn:Landroid/graphics/RectF;

    if-nez p2, :cond_1

    .line 240
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->rectCancelBtn:Landroid/graphics/RectF;

    .line 241
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->operatorLocation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 242
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p2, Landroid/graphics/RectF;->left:F

    .line 243
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->rectCancelBtn:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 244
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->rectCancelBtn:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->bitmapCancel:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 245
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->rectCancelBtn:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->bitmapCancel:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    .line 247
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->right:F

    .line 248
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->rectCancelBtn:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/nubia/redmagickyi/main/R$dimen;->ns_2_dp:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 249
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->rectCancelBtn:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->bitmapCancel:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 250
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->rectCancelBtn:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->bitmapCancel:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 253
    :cond_1
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->rectCancelBtn:Landroid/graphics/RectF;

    return-object p0
.end method

.method private getClipedPath(II)Landroid/graphics/Path;
    .locals 4

    .line 230
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->clipedPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->clipedPath:Landroid/graphics/Path;

    .line 232
    new-instance v1, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, p2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, p1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 233
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->clipedPath:Landroid/graphics/Path;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p1, v1

    div-float/2addr p2, v1

    const v1, 0x3ec39581    # 0.382f

    mul-float/2addr p1, v1

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, p2, p1, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 235
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->clipedPath:Landroid/graphics/Path;

    return-object p0
.end method

.method private getMuteBtnRect(II)Landroid/graphics/RectF;
    .locals 3

    .line 257
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->rectMuteBtn:Landroid/graphics/RectF;

    if-nez v0, :cond_5

    .line 258
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->rectMuteBtn:Landroid/graphics/RectF;

    .line 259
    iget v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->operatorLocation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    int-to-float p1, p1

    .line 260
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr p1, v1

    iput p1, v0, Landroid/graphics/RectF;->right:F

    .line 261
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->rectMuteBtn:Landroid/graphics/RectF;

    int-to-float p2, p2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 262
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->rectMuteBtn:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->right:F

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->isMute:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->bitmapMuteOn:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->bitmapMuteOff:Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->left:F

    .line 263
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->rectMuteBtn:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->isMute:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->bitmapMuteOn:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->bitmapMuteOff:Landroid/graphics/Bitmap;

    :goto_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->top:F

    goto :goto_4

    .line 265
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 266
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->rectMuteBtn:Landroid/graphics/RectF;

    int-to-float p2, p2

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/redmagickyi/main/R$dimen;->ns_1_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 267
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->rectMuteBtn:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->isMute:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->bitmapMuteOn:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->bitmapMuteOff:Landroid/graphics/Bitmap;

    :goto_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 268
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->rectMuteBtn:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->isMute:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->bitmapMuteOn:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->bitmapMuteOff:Landroid/graphics/Bitmap;

    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 271
    :cond_5
    :goto_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->rectMuteBtn:Landroid/graphics/RectF;

    return-object p0
.end method

.method private handleDraw(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v0, 0x0

    .line 203
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 205
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getDegress()F

    move-result v0

    .line 206
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->isLargeIcon:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getLargeRingBacgoundBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getSmallRingBacgoundBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 207
    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 208
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 211
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 212
    iget-boolean v5, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->isModelReady:Z

    if-eqz v5, :cond_1

    .line 213
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getLargeRingBacgoundBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getLargeRingBacgoundBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->getClipedPath(II)Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 215
    :cond_1
    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->paint:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {p1, v1, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 216
    iget-boolean v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->performRolling:Z

    if-eqz v1, :cond_3

    .line 217
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->matrix:Landroid/graphics/Matrix;

    int-to-float v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    int-to-float v7, v3

    div-float/2addr v7, v6

    invoke-virtual {v1, v0, v5, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 218
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->isLargeIcon:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getLargeRingIndicatorBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getSmallRingIndicatorBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 220
    :cond_3
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 223
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->operatorLocation:I

    if-eqz v0, :cond_5

    .line 224
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->bitmapCancel:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->getCancelBtnRect(II)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v4, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->paint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 225
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->isMute:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->bitmapMuteOn:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->bitmapMuteOff:Landroid/graphics/Bitmap;

    :goto_2
    invoke-direct {p0, v2, v3}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->getMuteBtnRect(II)Landroid/graphics/RectF;

    move-result-object v1

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method private init()V
    .locals 3

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 55
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->matrix:Landroid/graphics/Matrix;

    .line 58
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->bitmapCancel:Landroid/graphics/Bitmap;

    sget v2, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_floatingwindow_cancel:I

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->initBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->bitmapCancel:Landroid/graphics/Bitmap;

    .line 59
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->bitmapMuteOn:Landroid/graphics/Bitmap;

    sget v2, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_floatingwindow_volume_off:I

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->initBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->bitmapMuteOn:Landroid/graphics/Bitmap;

    .line 60
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->bitmapMuteOff:Landroid/graphics/Bitmap;

    sget v2, Lcn/nubia/redmagickyi/main/R$drawable;->svg_ic_floatingwindow_volume_on:I

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->initBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->bitmapMuteOff:Landroid/graphics/Bitmap;

    .line 62
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->setClickable(Z)V

    .line 63
    invoke-virtual {p0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->setZOrderOnTop(Z)V

    .line 64
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, -0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 65
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 66
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->init()V

    .line 67
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->addListeners(Ljava/lang/Object;Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory$OnRingListener;)V

    return-void
.end method

.method private isRectClicked(Landroid/graphics/RectF;FF)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private refreshUI()V
    .locals 2

    .line 187
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->isCreated:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    :try_start_0
    invoke-direct {p0, v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->handleDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 193
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 195
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 196
    throw v1

    :cond_0
    :goto_2
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 151
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->onViewClickedListener:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView$OnViewClickedListener;

    if-eqz v0, :cond_2

    .line 152
    invoke-interface {v0, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView$OnViewClickedListener;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 153
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 157
    iget v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->operatorLocation:I

    if-eqz v2, :cond_1

    .line 158
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->rectCancelBtn:Landroid/graphics/RectF;

    invoke-direct {p0, v2, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->isRectClicked(Landroid/graphics/RectF;FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->onViewClickedListener:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView$OnViewClickedListener;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView$OnViewClickedListener;->onCancelClicked()V

    goto :goto_0

    .line 161
    :cond_0
    iget-object v2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->rectMuteBtn:Landroid/graphics/RectF;

    invoke-direct {p0, v2, v0, v1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->isRectClicked(Landroid/graphics/RectF;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->onViewClickedListener:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView$OnViewClickedListener;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView$OnViewClickedListener;->onMuteClicked()V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->onViewClickedListener:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView$OnViewClickedListener;

    invoke-interface {v0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView$OnViewClickedListener;->onIconClicked()V

    .line 171
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public isModelReady()Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->isModelReady:Z

    return p0
.end method

.method public onDegressChanged(F)V
    .locals 0

    .line 183
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->refreshUI()V

    return-void
.end method

.method public setLargeIcon(Z)V
    .locals 1

    .line 99
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->isLargeIcon:Z

    if-eq v0, p1, :cond_0

    .line 100
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->isLargeIcon:Z

    .line 101
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->refreshUI()V

    :cond_0
    return-void
.end method

.method public setModelReady(Z)V
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->isModelReady:Z

    if-eq v0, p1, :cond_0

    .line 114
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->isModelReady:Z

    .line 115
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->refreshUI()V

    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 1

    .line 106
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->isMute:Z

    if-eq v0, p1, :cond_0

    .line 107
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->isMute:Z

    .line 108
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->refreshUI()V

    :cond_0
    return-void
.end method

.method public setOnViewClickedListener(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView$OnViewClickedListener;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->onViewClickedListener:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView$OnViewClickedListener;

    return-void
.end method

.method public setOperatorLocation(I)V
    .locals 2

    .line 86
    iget v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->operatorLocation:I

    if-nez v0, :cond_0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    if-eq v0, p1, :cond_1

    .line 91
    iput p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->operatorLocation:I

    const/4 p1, 0x0

    .line 92
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->rectCancelBtn:Landroid/graphics/RectF;

    .line 93
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->rectMuteBtn:Landroid/graphics/RectF;

    .line 94
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->refreshUI()V

    :cond_1
    return-void
.end method

.method public setRingRolling(Z)V
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->performRolling:Z

    if-eq v0, p1, :cond_1

    .line 72
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->performRolling:Z

    .line 73
    iget-boolean v0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->isCreated:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 75
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->start()V

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->stop()V

    .line 79
    :goto_0
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->refreshUI()V

    :cond_1
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 134
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "surfaceChanged = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IconForgroundView"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->isCreated:Z

    .line 136
    invoke-direct {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->refreshUI()V

    .line 137
    iget-boolean p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->performRolling:Z

    if-eqz p0, :cond_0

    .line 138
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->start()V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 129
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "surfaceCreated = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IconForgroundView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "surfaceDestroyed = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "IconForgroundView"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 145
    iput-boolean p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconForgroundView;->isCreated:Z

    .line 146
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->getInstance()Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/view/icon/IconRingFactory;->stop()V

    return-void
.end method
