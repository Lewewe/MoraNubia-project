.class Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$2;
.super Ljava/lang/Object;
.source "ProcessManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;->startToast(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

.field final synthetic val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;)V
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

    .line 1560
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$2;->this$1:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$2;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1563
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/ProcessManager$Output$2;->val$outputEntry:Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/process/entry/output/OutputEntry;->getWords()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v1, p0, v0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->makeText(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcn/nubia/redmagickyi/util/RedmagickyiToast;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/util/RedmagickyiToast;->show()V

    return-void
.end method
