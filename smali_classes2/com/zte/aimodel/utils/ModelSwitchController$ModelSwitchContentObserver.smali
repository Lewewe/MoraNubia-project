.class Lcom/zte/aimodel/utils/ModelSwitchController$ModelSwitchContentObserver;
.super Landroid/database/ContentObserver;
.source "ModelSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimodel/utils/ModelSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModelSwitchContentObserver"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private isStoped:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 111
    iput-object p1, p0, Lcom/zte/aimodel/utils/ModelSwitchController$ModelSwitchContentObserver;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onChange(ZLjava/util/Collection;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;I)V"
        }
    .end annotation

    .line 116
    iget-boolean v0, p0, Lcom/zte/aimodel/utils/ModelSwitchController$ModelSwitchContentObserver;->isStoped:Z

    if-nez v0, :cond_0

    .line 117
    invoke-super {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLjava/util/Collection;I)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x1

    .line 122
    iput-boolean v0, p0, Lcom/zte/aimodel/utils/ModelSwitchController$ModelSwitchContentObserver;->isStoped:Z

    .line 123
    iget-object v0, p0, Lcom/zte/aimodel/utils/ModelSwitchController$ModelSwitchContentObserver;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 124
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 125
    iput-object v1, p0, Lcom/zte/aimodel/utils/ModelSwitchController$ModelSwitchContentObserver;->handler:Landroid/os/Handler;

    :cond_0
    return-void
.end method
