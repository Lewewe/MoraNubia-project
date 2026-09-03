.class Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;
.super Ljava/lang/Object;
.source "AIMoEOkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final consumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;Ljava/lang/Class;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;->this$1:Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput-object p2, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;->type:Ljava/lang/Class;

    .line 164
    iput-object p3, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;->consumer:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/String;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;->type:Ljava/lang/Class;

    invoke-static {p1, v0}, Lcom/zte/aimoe/model/completion/chat/util/Json;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 169
    iget-object p0, p0, Lcom/zte/aimoe/model/completion/chat/request/AIMoEOkHttpClient$1$EventHandler;->consumer:Ljava/util/function/Consumer;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
