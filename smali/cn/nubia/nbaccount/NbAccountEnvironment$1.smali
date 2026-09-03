.class synthetic Lcn/nubia/nbaccount/NbAccountEnvironment$1;
.super Ljava/lang/Object;
.source "NbAccountEnvironment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/nbaccount/NbAccountEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$nubia$nbaccount$NbAccountEnvironment$Environment:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    invoke-static {}, Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;->values()[Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/nubia/nbaccount/NbAccountEnvironment$1;->$SwitchMap$cn$nubia$nbaccount$NbAccountEnvironment$Environment:[I

    :try_start_0
    sget-object v1, Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;->RELEASE:Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;

    invoke-virtual {v1}, Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcn/nubia/nbaccount/NbAccountEnvironment$1;->$SwitchMap$cn$nubia$nbaccount$NbAccountEnvironment$Environment:[I

    sget-object v1, Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;->TEST:Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;

    invoke-virtual {v1}, Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcn/nubia/nbaccount/NbAccountEnvironment$1;->$SwitchMap$cn$nubia$nbaccount$NbAccountEnvironment$Environment:[I

    sget-object v1, Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;->DEV:Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;

    invoke-virtual {v1}, Lcn/nubia/nbaccount/NbAccountEnvironment$Environment;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
