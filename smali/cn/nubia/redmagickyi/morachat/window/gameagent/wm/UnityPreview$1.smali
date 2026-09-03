.class Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$1;
.super Ljava/lang/Object;
.source "UnityPreview.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->parseMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 262
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 265
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview$1;->this$0:Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/morachat/window/gameagent/wm/UnityPreview;->changeUnitySkin()V

    return-void
.end method
