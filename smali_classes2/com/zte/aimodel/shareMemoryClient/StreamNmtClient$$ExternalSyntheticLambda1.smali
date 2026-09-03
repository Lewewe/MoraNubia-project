.class public final synthetic Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient$$ExternalSyntheticLambda1;->f$0:Ljava/util/List;

    check-cast p1, Ljava/lang/Void;

    invoke-static {p0, p1}, Lcom/zte/aimodel/shareMemoryClient/StreamNmtClient;->lambda$transfer$0(Ljava/util/List;Ljava/lang/Void;)Lcom/zte/aimodel/sharedmemory/SharedMemoryDesc$Reply;

    move-result-object p0

    return-object p0
.end method
