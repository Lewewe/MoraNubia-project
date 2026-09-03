.class final Lcn/nubia/upgrade/c/g$c;
.super Ljava/lang/Object;
.source "ReportUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/upgrade/c/g;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/content/Context;

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/upgrade/c/g$c;->a:Ljava/util/Map;

    iput-object p2, p0, Lcn/nubia/upgrade/c/g$c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/upgrade/c/g$c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/nubia/upgrade/c/g$c;->d:Landroid/content/Context;

    iput p5, p0, Lcn/nubia/upgrade/c/g$c;->e:I

    iput-object p6, p0, Lcn/nubia/upgrade/c/g$c;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "ReportUtils"

    const-string v1, "report install event."

    .line 1
    invoke-static {v0, v1}, Lcn/nubia/upgrade/c/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/upgrade/c/g$c;->a:Ljava/util/Map;

    invoke-static {}, Lcn/nubia/upgrade/constants/a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/upgrade/c/g$c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/upgrade/c/g$c;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/upgrade/http/e;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/nubia/upgrade/c/g$c;->d:Landroid/content/Context;

    iget v1, p0, Lcn/nubia/upgrade/c/g$c;->e:I

    const-string v2, "version_code"

    invoke-static {v0, v2, v1}, Lcn/nubia/upgrade/c/f;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5
    iget-object v0, p0, Lcn/nubia/upgrade/c/g$c;->d:Landroid/content/Context;

    iget-object p0, p0, Lcn/nubia/upgrade/c/g$c;->f:Ljava/lang/String;

    const-string v1, "from_version_name"

    invoke-static {v0, v1, p0}, Lcn/nubia/upgrade/c/f;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
