.class public Lcn/nubia/redmagickyi/redmagicapp/MainRedmagickyiApplication;
.super Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;
.source "MainRedmagickyiApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MainRedmagickyiApplication"


# instance fields
.field private instrumentation:Lcn/nubia/redmagickyi/redmagicapp/ApplicationInstrumentation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;-><init>()V

    .line 10
    new-instance v0, Lcn/nubia/redmagickyi/redmagicapp/ApplicationInstrumentation;

    invoke-direct {v0}, Lcn/nubia/redmagickyi/redmagicapp/ApplicationInstrumentation;-><init>()V

    iput-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/MainRedmagickyiApplication;->instrumentation:Lcn/nubia/redmagickyi/redmagicapp/ApplicationInstrumentation;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .line 14
    iget-object v0, p0, Lcn/nubia/redmagickyi/redmagicapp/MainRedmagickyiApplication;->instrumentation:Lcn/nubia/redmagickyi/redmagicapp/ApplicationInstrumentation;

    const-string v1, "MainRedmagickyiApplication"

    invoke-virtual {v0, v1, p0}, Lcn/nubia/redmagickyi/redmagicapp/ApplicationInstrumentation;->init(Ljava/lang/String;Lcn/nubia/redmagickyi/util/ApplicationContext$BaseApplication;)V

    .line 15
    invoke-super {p0}, Lcn/nubia/redmagickyi/redmagicapp/RedmagickyiApplication;->onCreate()V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onCreate appName: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/nubia/redmagickyi/redmagicapp/MainRedmagickyiApplication;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0f0296

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " version: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " code: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcn/nubia/redmagickyi/util/ApplicationContext;->getVersionCode()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", process: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcn/nubia/redmagickyi/redmagicapp/MainRedmagickyiApplication;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", monkey: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcn/nubia/redmagickyi/util/CommonUtils;->isMonkeyRunning()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
