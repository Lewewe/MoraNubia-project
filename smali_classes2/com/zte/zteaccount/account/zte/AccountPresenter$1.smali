.class Lcom/zte/zteaccount/account/zte/AccountPresenter$1;
.super Ljava/lang/Object;
.source "AccountPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/zteaccount/account/zte/AccountPresenter;->initServiceConnection()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/zteaccount/account/zte/AccountPresenter;


# direct methods
.method constructor <init>(Lcom/zte/zteaccount/account/zte/AccountPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/zte/zteaccount/account/zte/AccountPresenter$1;->this$0:Lcom/zte/zteaccount/account/zte/AccountPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 59
    iget-object p1, p0, Lcom/zte/zteaccount/account/zte/AccountPresenter$1;->this$0:Lcom/zte/zteaccount/account/zte/AccountPresenter;

    invoke-static {p2}, Lorg/zx/AuthComp/IMyService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/zx/AuthComp/IMyService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zte/zteaccount/account/zte/AccountPresenter;->access$002(Lcom/zte/zteaccount/account/zte/AccountPresenter;Lorg/zx/AuthComp/IMyService;)Lorg/zx/AuthComp/IMyService;

    .line 60
    const-string p1, "AccountPresenter"

    const-string p2, "onServiceConnected"

    invoke-static {p1, p2}, Lcom/zte/aigc/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p0, p0, Lcom/zte/zteaccount/account/zte/AccountPresenter$1;->this$0:Lcom/zte/zteaccount/account/zte/AccountPresenter;

    invoke-virtual {p0}, Lcom/zte/zteaccount/account/zte/AccountPresenter;->initAccount()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 55
    const-string p0, "AccountPresenter"

    const-string p1, "onServiceDisconnected"

    invoke-static {p0, p1}, Lcom/zte/aigc/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
