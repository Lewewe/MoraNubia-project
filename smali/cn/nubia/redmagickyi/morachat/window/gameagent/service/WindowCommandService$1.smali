.class Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$1;
.super Ljava/lang/Object;
.source "WindowCommandService.java"

# interfaces
.implements Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$OnLocationServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;Landroid/content/Intent;)V
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

    .line 73
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationServiceConnected(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandLocationService$WindowCommandLocationBinder;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-static {p1, p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;->access$000(Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;Landroid/os/Bundle;)V

    return-void
.end method

.method public onLocationServiceDisconnected()V
    .locals 0

    return-void
.end method
