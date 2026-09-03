.class Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$3;
.super Ljava/lang/Object;
.source "RedmagickyiApplication.java"

# interfaces
.implements Lcn/nubia/redmagickyi/util/DensityCustomer$Custom;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->initDensityCustomer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private sCustomTargetDensity:Ljava/lang/Float;

.field final synthetic this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;


# direct methods
.method constructor <init>(Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$3;->this$0:Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomTargetDensity()Ljava/lang/Float;
    .locals 3

    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$3;->sCustomTargetDensity:Ljava/lang/Float;

    if-nez v0, :cond_2

    .line 141
    invoke-static {}, Lcn/nubia/redmagickyi/util/ModuleCustomer$AIAgent;->enable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcn/nubia/redmagickyi/morachat/window/redmagickyi/service/WindowCommandService;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/ProcessUtils;->getProcessNameByComponentName(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getProcessName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x40570a3d    # 3.36f

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$3;->sCustomTargetDensity:Ljava/lang/Float;

    .line 152
    :cond_0
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcn/nubia/redmagickyi/morachat/window/gameagent/service/WindowCommandService;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/ProcessUtils;->getProcessNameByComponentName(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getProcessName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$3;->sCustomTargetDensity:Ljava/lang/Float;

    .line 161
    :cond_1
    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcn/nubia/redmagickyi/morachat/window/aiassistant/service/WindowCommandService;

    invoke-static {v0, v1}, Lcn/nubia/redmagickyi/util/ProcessUtils;->getProcessNameByComponentName(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getProcessName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$3;->sCustomTargetDensity:Ljava/lang/Float;

    .line 170
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    iget-object p0, p0, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication$3;->sCustomTargetDensity:Ljava/lang/Float;

    return-object p0

    :catchall_0
    move-exception v0

    .line 170
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
