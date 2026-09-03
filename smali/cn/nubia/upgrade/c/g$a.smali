.class final Lcn/nubia/upgrade/c/g$a;
.super Ljava/lang/Object;
.source "ReportUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/upgrade/c/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/upgrade/c/g$a;->a:Ljava/util/Map;

    iput-object p2, p0, Lcn/nubia/upgrade/c/g$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/upgrade/c/g$a;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/upgrade/c/g$a;->a:Ljava/util/Map;

    invoke-static {}, Lcn/nubia/upgrade/constants/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/c/g$a;->b:Ljava/lang/String;

    iget-object p0, p0, Lcn/nubia/upgrade/c/g$a;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcn/nubia/upgrade/http/e;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
