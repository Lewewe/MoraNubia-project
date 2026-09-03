.class Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$2;
.super Ljava/lang/Object;
.source "AccompanyManager.java"

# interfaces
.implements Lcom/zte/utils/MyRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;->startWithCheck(Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;Ljava/lang/Runnable;)V
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

    .line 152
    iput-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;

    iput-object p2, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$2;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Ljava/lang/Object;)V
    .locals 1

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 156
    iget-object p1, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$2;->val$runnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 157
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 159
    :cond_0
    iget-object p0, p0, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager$2;->this$0:Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/process/AccompanyManager;->start(Z)Z

    goto :goto_0

    .line 161
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->getInstance()Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;

    move-result-object p0

    sget-object p1, Lcn/nubia/redmagickyi/morachat/main/database/setting/Property;->ACCOMPANY_SWITCH:Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/redmagickyi/morachat/main/database/setting/AiAgentSettingsDao;->setProp(Lcn/nubia/redmagickyi/morachat/main/database/setting/Property$Boolean;Z)Z

    :goto_0
    return-void
.end method
