.class Lcom/zte/zteaccount/account/zte/ZteAccountEntry$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "ZteAccountEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->onGetCloudToken()Lcom/zte/aigc/vo/CloudToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/zte/aigc/vo/Result<",
        "Lcom/zte/aigc/vo/CloudToken;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zteaccount/account/zte/ZteAccountEntry;


# direct methods
.method constructor <init>(Lcom/zte/zteaccount/account/zte/ZteAccountEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$2;->this$0:Lcom/zte/zteaccount/account/zte/ZteAccountEntry;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
