.class Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$2;
.super Ljava/lang/Object;
.source "MainAccountChangeReceiver.java"

# interfaces
.implements Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$AccountChangeInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;->register(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;


# direct methods
.method constructor <init>(Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$2;->this$0:Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AccountChange()V
    .locals 2

    .line 47
    const-string v0, "MainAccountChangeReceiver"

    const-string v1, "n account change"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object p0, p0, Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver$2;->this$0:Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;

    invoke-virtual {p0}, Lcom/zte/zteaccount/account/brocast/MainAccountChangeReceiver;->MainAcoountChange()V

    return-void
.end method
