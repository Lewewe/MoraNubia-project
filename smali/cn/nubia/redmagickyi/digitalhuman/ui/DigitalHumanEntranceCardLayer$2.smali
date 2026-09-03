.class Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$2;
.super Ljava/lang/Object;
.source "DigitalHumanEntranceCardLayer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->setOnMarginClickListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

.field final synthetic val$gestureDetector:Landroid/view/GestureDetector;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;Landroid/view/GestureDetector;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$2;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    iput-object p2, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$2;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$2;->this$0:Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;

    invoke-static {v0}, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;->access$000(Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 165
    iget-object p0, p0, Lcn/nubia/redmagickyi/digitalhuman/ui/DigitalHumanEntranceCardLayer$2;->val$gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
