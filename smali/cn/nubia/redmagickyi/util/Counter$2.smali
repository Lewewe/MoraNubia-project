.class Lcn/nubia/redmagickyi/util/Counter$2;
.super Ljava/lang/Object;
.source "Counter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/util/Counter;->onCounterValueChanged(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/util/Counter;

.field final synthetic val$isEnd:Z

.field final synthetic val$value:F


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/util/Counter;FZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcn/nubia/redmagickyi/util/Counter$2;->this$0:Lcn/nubia/redmagickyi/util/Counter;

    iput p2, p0, Lcn/nubia/redmagickyi/util/Counter$2;->val$value:F

    iput-boolean p3, p0, Lcn/nubia/redmagickyi/util/Counter$2;->val$isEnd:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcn/nubia/redmagickyi/util/Counter$2;->this$0:Lcn/nubia/redmagickyi/util/Counter;

    invoke-static {v0}, Lcn/nubia/redmagickyi/util/Counter;->access$800(Lcn/nubia/redmagickyi/util/Counter;)Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;

    move-result-object v0

    iget v1, p0, Lcn/nubia/redmagickyi/util/Counter$2;->val$value:F

    iget-boolean p0, p0, Lcn/nubia/redmagickyi/util/Counter$2;->val$isEnd:Z

    invoke-interface {v0, v1, p0}, Lcn/nubia/redmagickyi/util/Counter$OnCounterEventListener;->onCounterValueChanged(FZ)V

    return-void
.end method
