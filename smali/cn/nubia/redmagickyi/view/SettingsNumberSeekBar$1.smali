.class Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar$1;
.super Ljava/lang/Object;
.source "SettingsNumberSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar$1;->this$0:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 144
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar$1;->this$0:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    invoke-virtual {v0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar$1;->this$0:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    invoke-static {v1}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->access$000(Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;)F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar$1;->this$0:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/redmagickyi/main/R$dimen;->ns_f1_dp:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    iget-object v2, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar$1;->this$0:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    invoke-virtual {v2}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 146
    iget-object v1, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar$1;->this$0:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    invoke-virtual {v1}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->getProgress()I

    move-result v1

    .line 147
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar$1;->this$0:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    add-int/lit8 v3, v0, -0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->access$102(Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->setMin(I)V

    .line 148
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar$1;->this$0:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    rsub-int v0, v0, 0x3e3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->access$202(Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->setMax(I)V

    .line 149
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar$1;->this$0:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    invoke-virtual {v0, v1}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->setProgress(I)V

    .line 151
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar$1;->this$0:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/ScreenUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->access$302(Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;Z)Z

    .line 152
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar$1;->this$0:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->access$300(Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar$1;->this$0:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->access$400(Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 155
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 156
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 157
    invoke-virtual {v6, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 158
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar$1;->this$0:Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p0, v1}, Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;->access$402(Lcn/nubia/redmagickyi/view/SettingsNumberSeekBar;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 159
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    .line 160
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method
