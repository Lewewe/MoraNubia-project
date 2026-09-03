.class Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar$1;
.super Ljava/lang/Object;
.source "NumberSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar$1;->this$0:Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 139
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar$1;->this$0:Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;->access$002(Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;Z)Z

    .line 140
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar$1;->this$0:Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;->access$000(Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar$1;->this$0:Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;

    invoke-static {v0}, Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;->access$100(Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 143
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 144
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 145
    invoke-virtual {v6, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 146
    iget-object p0, p0, Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar$1;->this$0:Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p0, v1}, Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;->access$102(Lcn/nubia/redmagickyi/ar/seekerbar/NumberSeekBar;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 147
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    .line 148
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
