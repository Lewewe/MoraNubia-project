.class public final enum Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;
.super Ljava/lang/Enum;
.source "NbAccountEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/nbaccount/NbAccountEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Environment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;

.field public static final enum DEV:Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;

.field public static final enum RELEASE:Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;

.field public static final enum TEST:Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 23
    new-instance v0, Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;

    const-string v1, "RELEASE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;->RELEASE:Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;

    .line 24
    new-instance v1, Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;

    const-string v2, "TEST"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;->TEST:Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;

    .line 25
    new-instance v2, Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;

    const-string v3, "DEV"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;->DEV:Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;

    .line 22
    filled-new-array {v0, v1, v2}, [Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;

    move-result-object v0

    sput-object v0, Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;->$VALUES:[Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;
    .locals 1

    .line 22
    const-class v0, Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;

    return-object p0
.end method

.method public static values()[Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;
    .locals 1

    .line 22
    sget-object v0, Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;->$VALUES:[Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;

    invoke-virtual {v0}, [Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;

    return-object v0
.end method
