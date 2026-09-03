.class Lcom/zte/zteaccount/account/AigcAccountManager$DeepAccountInfoInterface;
.super Ljava/lang/Object;
.source "AigcAccountManager.java"

# interfaces
.implements Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/zteaccount/account/AigcAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeepAccountInfoInterface"
.end annotation


# instance fields
.field private outterAccountInfoInterface:Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;

.field final synthetic this$0:Lcom/zte/zteaccount/account/AigcAccountManager;


# direct methods
.method public constructor <init>(Lcom/zte/zteaccount/account/AigcAccountManager;Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/zte/zteaccount/account/AigcAccountManager$DeepAccountInfoInterface;->this$0:Lcom/zte/zteaccount/account/AigcAccountManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p2, p0, Lcom/zte/zteaccount/account/AigcAccountManager$DeepAccountInfoInterface;->outterAccountInfoInterface:Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;

    return-void
.end method


# virtual methods
.method public AccountResPonse(Lcom/zte/zteaccount/account/AccountInfo;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/zte/zteaccount/account/AigcAccountManager$DeepAccountInfoInterface;->this$0:Lcom/zte/zteaccount/account/AigcAccountManager;

    invoke-static {v0, p1}, Lcom/zte/zteaccount/account/AigcAccountManager;->access$202(Lcom/zte/zteaccount/account/AigcAccountManager;Lcom/zte/zteaccount/account/AccountInfo;)Lcom/zte/zteaccount/account/AccountInfo;

    .line 151
    iget-object p0, p0, Lcom/zte/zteaccount/account/AigcAccountManager$DeepAccountInfoInterface;->outterAccountInfoInterface:Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;

    if-eqz p0, :cond_0

    .line 152
    invoke-interface {p0, p1}, Lcom/zte/zteaccount/account/AigcAccountManager$AccountInfoInterface;->AccountResPonse(Lcom/zte/zteaccount/account/AccountInfo;)V

    :cond_0
    return-void
.end method
