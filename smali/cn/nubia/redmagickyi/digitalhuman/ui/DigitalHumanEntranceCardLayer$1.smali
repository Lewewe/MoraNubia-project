.class Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$1;
.super Ljava/lang/Object;
.source "DigitalHumanEntranceCardLayer.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->setOnMarginClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private scaledBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 114
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$000(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 115
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$1;->scaledBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$1;->scaledBitmap:Landroid/graphics/Bitmap;

    .line 117
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$000(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$1;->scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$1;->scaledBitmap:Landroid/graphics/Bitmap;

    .line 120
    :cond_1
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$1;->scaledBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    :cond_2
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$000(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 127
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_4

    goto :goto_0

    .line 132
    :cond_4
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$000(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->onClick(Landroid/view/View;)V

    goto :goto_1

    .line 130
    :catch_0
    :goto_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$100(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->onClick(Landroid/view/View;)V

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public scaleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 140
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$000(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$000(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$000(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$1;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {p0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$000(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    const/4 v1, 0x0

    invoke-static {p1, v0, p0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
