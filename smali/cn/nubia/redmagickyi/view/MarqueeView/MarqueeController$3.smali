.class Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController$3;
.super Ljava/lang/Object;
.source "MarqueeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController$3;->this$0:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 118
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController$3;->this$0:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->access$300(Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;)V

    return-void
.end method
