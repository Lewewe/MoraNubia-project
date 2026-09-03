.class Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeButton$1;
.super Ljava/lang/Object;
.source "MarqueeButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeButton;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeButton;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeButton$1;->this$0:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 63
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeButton$1;->this$0:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeButton;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeButton;->access$000(Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeButton;)Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->restartMarquee(Z)V

    return-void
.end method
