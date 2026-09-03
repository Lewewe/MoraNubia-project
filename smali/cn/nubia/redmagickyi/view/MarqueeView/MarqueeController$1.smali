.class Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController$1;
.super Ljava/lang/Object;
.source "MarqueeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->updateMarqueeState()V
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

    .line 59
    iput-object p1, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController$1;->this$0:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 63
    :try_start_0
    const-class v0, Landroid/widget/TextView;

    const-string v1, "mMarquee"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 65
    iget-object v2, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController$1;->this$0:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-static {v2}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->access$100(Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->access$002(Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController$1;->this$0:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-static {v0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->access$000(Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mRepeatLimit"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v0, v2}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->access$202(Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    .line 67
    iget-object p0, p0, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController$1;->this$0:Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;

    invoke-static {p0}, Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;->access$200(Lcn/nubia/redmagickyi/view/MarqueeView/MarqueeController;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
