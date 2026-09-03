.class Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory$BeatingCounterEventListener;
.super Ljava/lang/Object;
.source "IconRingFactory.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BeatingCounterEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;


# direct methods
.method private constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory$BeatingCounterEventListener;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory$1;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory$BeatingCounterEventListener;-><init>(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;)V

    return-void
.end method


# virtual methods
.method public onCounterValueChanged(FZ)V
    .locals 1

    .line 163
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory$BeatingCounterEventListener;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->access$500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory$BeatingCounterEventListener;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    invoke-static {p2}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->access$500(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;)Lcn/nubia/redmagickyi/util/Counter;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/redmagickyi/util/Counter;->isRunning()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    .line 166
    :cond_0
    iget-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory$BeatingCounterEventListener;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    invoke-static {p2, p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->access$602(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;F)F

    .line 167
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory$BeatingCounterEventListener;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    invoke-static {p1}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->access$400(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory$OnRingListener;

    .line 168
    iget-object v0, p0, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory$BeatingCounterEventListener;->this$0:Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;

    invoke-static {v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;->access$600(Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory;)F

    move-result v0

    invoke-interface {p2, v0}, Lcn/nubia/redmagickyi/morachat/window/aiassistant/view/icon/IconRingFactory$OnRingListener;->onBeatingValueChanged(F)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
