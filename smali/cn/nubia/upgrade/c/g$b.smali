.class final Lcn/nubia/upgrade/c/g$b;
.super Ljava/lang/Object;
.source "ReportUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/upgrade/c/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/upgrade/c/g$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcn/nubia/upgrade/c/g$b;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/upgrade/c/g$b;->c:Ljava/lang/String;

    iput p4, p0, Lcn/nubia/upgrade/c/g$b;->d:I

    iput p5, p0, Lcn/nubia/upgrade/c/g$b;->e:I

    iput-object p6, p0, Lcn/nubia/upgrade/c/g$b;->f:Ljava/lang/String;

    iput-object p7, p0, Lcn/nubia/upgrade/c/g$b;->g:Ljava/lang/String;

    iput-object p8, p0, Lcn/nubia/upgrade/c/g$b;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/nubia/upgrade/c/g$b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcn/nubia/upgrade/c/g$b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/nubia/upgrade/c/g$b;->c:Ljava/lang/String;

    iget v3, p0, Lcn/nubia/upgrade/c/g$b;->d:I

    iget v4, p0, Lcn/nubia/upgrade/c/g$b;->e:I

    iget-object v5, p0, Lcn/nubia/upgrade/c/g$b;->f:Ljava/lang/String;

    iget-object v6, p0, Lcn/nubia/upgrade/c/g$b;->g:Ljava/lang/String;

    iget-object v7, p0, Lcn/nubia/upgrade/c/g$b;->h:Ljava/lang/String;

    invoke-static/range {v0 .. v7}, Lcn/nubia/upgrade/c/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
