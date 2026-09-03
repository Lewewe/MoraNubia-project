.class public final Lcom/unity3d/player/m;
.super Landroid/view/View;
.source "m.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/m$a1;
    }
.end annotation


# instance fields
.field final a:Lcom/unity3d/player/m$a1;

.field final b:I

.field c:Landroid/graphics/Bitmap;

.field d:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/player/m$a1;)V
    .locals 2

    .line 24
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p2, p0, Lcom/unity3d/player/m;->a:Lcom/unity3d/player/m$a1;

    .line 26
    invoke-virtual {p0}, Lcom/unity3d/player/m;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0}, Lcom/unity3d/player/m;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "unity_static_splash"

    const-string v1, "drawable"

    invoke-virtual {p1, v0, v1, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/unity3d/player/m;->b:I

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/unity3d/player/m;->forceLayout()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onDetachedFromWindow()V
    .locals 2

    .line 100
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 101
    iget-object v0, p0, Lcom/unity3d/player/m;->c:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 103
    iput-object v1, p0, Lcom/unity3d/player/m;->c:Landroid/graphics/Bitmap;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/m;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 108
    iput-object v1, p0, Lcom/unity3d/player/m;->d:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 7

    .line 34
    iget p1, p0, Lcom/unity3d/player/m;->b:I

    if-eqz p1, :cond_9

    .line 35
    iget-object p1, p0, Lcom/unity3d/player/m;->c:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 37
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean p2, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 38
    invoke-virtual {p0}, Lcom/unity3d/player/m;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget p4, p0, Lcom/unity3d/player/m;->b:I

    invoke-static {p3, p4, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/m;->c:Landroid/graphics/Bitmap;

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/unity3d/player/m;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 42
    iget-object p3, p0, Lcom/unity3d/player/m;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    .line 43
    invoke-virtual {p0}, Lcom/unity3d/player/m;->getWidth()I

    move-result p4

    .line 44
    invoke-virtual {p0}, Lcom/unity3d/player/m;->getHeight()I

    move-result p5

    if-eqz p4, :cond_9

    if-eqz p5, :cond_9

    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v0, v1

    int-to-float v1, p4

    int-to-float v2, p5

    div-float v3, v1, v2

    cmpg-float v3, v3, v0

    const/4 v4, 0x1

    if-gtz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, p2

    .line 49
    :goto_0
    invoke-static {}, Lcom/unity3d/player/m$a1;->values()[Lcom/unity3d/player/m$a1;

    move-result-object v5

    iget-object v6, p0, Lcom/unity3d/player/m;->a:Lcom/unity3d/player/m$a1;

    iget v6, v6, Lcom/unity3d/player/m$a1;->i:I

    sub-int/2addr v6, v4

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/unity3d/player/m$a1;->ordinal()I

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_4

    if-eq v5, v4, :cond_2

    if-eq v5, v6, :cond_2

    goto :goto_2

    .line 66
    :cond_2
    iget-object p1, p0, Lcom/unity3d/player/m;->a:Lcom/unity3d/player/m$a1;

    sget-object p3, Lcom/unity3d/player/m$a1;->c:Lcom/unity3d/player/m$a1;

    if-ne p1, p3, :cond_3

    move p1, v4

    goto :goto_1

    :cond_3
    move p1, p2

    :goto_1
    xor-int/2addr p1, v3

    if-eqz p1, :cond_6

    div-float/2addr v1, v0

    float-to-int p3, v1

    move p1, p4

    goto :goto_2

    :cond_4
    if-ge p4, p1, :cond_5

    div-float/2addr v1, v0

    float-to-int p3, v1

    move p1, p4

    :cond_5
    if-lt p5, p3, :cond_6

    goto :goto_2

    :cond_6
    mul-float/2addr v2, v0

    float-to-int p1, v2

    move p3, p5

    .line 78
    :goto_2
    iget-object p4, p0, Lcom/unity3d/player/m;->d:Landroid/graphics/Bitmap;

    if-eqz p4, :cond_8

    .line 79
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    if-ne p4, p1, :cond_7

    iget-object p4, p0, Lcom/unity3d/player/m;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    if-ne p4, p3, :cond_7

    return-void

    .line 83
    :cond_7
    iget-object p4, p0, Lcom/unity3d/player/m;->d:Landroid/graphics/Bitmap;

    iget-object p5, p0, Lcom/unity3d/player/m;->c:Landroid/graphics/Bitmap;

    if-eq p4, p5, :cond_8

    .line 84
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p4, 0x0

    .line 85
    iput-object p4, p0, Lcom/unity3d/player/m;->d:Landroid/graphics/Bitmap;

    .line 89
    :cond_8
    iget-object p4, p0, Lcom/unity3d/player/m;->c:Landroid/graphics/Bitmap;

    invoke-static {p4, p1, p3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/m;->d:Landroid/graphics/Bitmap;

    .line 90
    invoke-virtual {p0}, Lcom/unity3d/player/m;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p1, p3}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 91
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 p3, -0x1000000

    invoke-direct {p1, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 93
    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/unity3d/player/m;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    iget-object p5, p0, Lcom/unity3d/player/m;->d:Landroid/graphics/Bitmap;

    invoke-direct {p3, p4, p5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/16 p4, 0x11

    invoke-virtual {p3, p4}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 94
    new-instance p4, Landroid/graphics/drawable/LayerDrawable;

    new-array p5, v6, [Landroid/graphics/drawable/Drawable;

    aput-object p1, p5, p2

    aput-object p3, p5, v4

    invoke-direct {p4, p5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p4}, Lcom/unity3d/player/m;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    return-void
.end method
