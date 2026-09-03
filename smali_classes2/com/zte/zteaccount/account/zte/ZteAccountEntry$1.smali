.class Lcom/zte/zteaccount/account/zte/ZteAccountEntry$1;
.super Ljava/lang/Object;
.source "ZteAccountEntry.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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

    .line 60
    iput-object p1, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$1;->this$0:Lcom/zte/zteaccount/account/zte/ZteAccountEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 64
    :try_start_0
    iget-object p0, p0, Lcom/zte/zteaccount/account/zte/ZteAccountEntry$1;->this$0:Lcom/zte/zteaccount/account/zte/ZteAccountEntry;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/zte/zteaccount/account/zte/ZteAccountEntry;->access$000(Lcom/zte/zteaccount/account/zte/ZteAccountEntry;Z)V
    :try_end_0
    .catch Lcom/zte/aigc/common/RequestException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 66
    invoke-virtual {p0}, Lcom/zte/aigc/common/RequestException;->printStackTrace()V

    :goto_0
    return-void
.end method
