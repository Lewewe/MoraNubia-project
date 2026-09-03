.class public final enum Lcn/nubia/upgrade/http/a$b;
.super Ljava/lang/Enum;
.source "DownloadRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/upgrade/http/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/upgrade/http/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/nubia/upgrade/http/a$b;

.field public static final enum b:Lcn/nubia/upgrade/http/a$b;

.field public static final enum c:Lcn/nubia/upgrade/http/a$b;

.field public static final enum d:Lcn/nubia/upgrade/http/a$b;

.field public static final enum e:Lcn/nubia/upgrade/http/a$b;

.field private static final synthetic f:[Lcn/nubia/upgrade/http/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcn/nubia/upgrade/http/a$b;

    const-string v1, "PREPARE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/upgrade/http/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/upgrade/http/a$b;->a:Lcn/nubia/upgrade/http/a$b;

    new-instance v1, Lcn/nubia/upgrade/http/a$b;

    const-string v2, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcn/nubia/upgrade/http/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/upgrade/http/a$b;->b:Lcn/nubia/upgrade/http/a$b;

    new-instance v2, Lcn/nubia/upgrade/http/a$b;

    const-string v3, "PAUSE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcn/nubia/upgrade/http/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcn/nubia/upgrade/http/a$b;->c:Lcn/nubia/upgrade/http/a$b;

    new-instance v3, Lcn/nubia/upgrade/http/a$b;

    const-string v4, "COMPLETE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcn/nubia/upgrade/http/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcn/nubia/upgrade/http/a$b;->d:Lcn/nubia/upgrade/http/a$b;

    new-instance v4, Lcn/nubia/upgrade/http/a$b;

    const-string v5, "ERROR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcn/nubia/upgrade/http/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcn/nubia/upgrade/http/a$b;->e:Lcn/nubia/upgrade/http/a$b;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcn/nubia/upgrade/http/a$b;

    move-result-object v0

    sput-object v0, Lcn/nubia/upgrade/http/a$b;->f:[Lcn/nubia/upgrade/http/a$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/upgrade/http/a$b;
    .locals 1

    .line 1
    const-class v0, Lcn/nubia/upgrade/http/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/upgrade/http/a$b;

    return-object p0
.end method

.method public static values()[Lcn/nubia/upgrade/http/a$b;
    .locals 1

    .line 1
    sget-object v0, Lcn/nubia/upgrade/http/a$b;->f:[Lcn/nubia/upgrade/http/a$b;

    invoke-virtual {v0}, [Lcn/nubia/upgrade/http/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/upgrade/http/a$b;

    return-object v0
.end method
