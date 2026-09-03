.class Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "AIMoeTextModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;->getHistory()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/zte/aimoe/model/completion/chat/event/wapper/common/ChatMessage;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;


# direct methods
.method constructor <init>(Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 337
    iput-object p1, p0, Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager$2;->this$1:Lcom/zte/aimodel/redmagickyi/models/AIMoe/AIMoeTextModel$DataManager;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
