.class final enum Lcom/zte/regex/Pattern$Qtype;
.super Ljava/lang/Enum;
.source "Pattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/regex/Pattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Qtype"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zte/regex/Pattern$Qtype;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zte/regex/Pattern$Qtype;

.field public static final enum GREEDY:Lcom/zte/regex/Pattern$Qtype;

.field public static final enum INDEPENDENT:Lcom/zte/regex/Pattern$Qtype;

.field public static final enum LAZY:Lcom/zte/regex/Pattern$Qtype;

.field public static final enum POSSESSIVE:Lcom/zte/regex/Pattern$Qtype;


# direct methods
.method private static synthetic $values()[Lcom/zte/regex/Pattern$Qtype;
    .locals 4

    .line 2495
    sget-object v0, Lcom/zte/regex/Pattern$Qtype;->GREEDY:Lcom/zte/regex/Pattern$Qtype;

    sget-object v1, Lcom/zte/regex/Pattern$Qtype;->LAZY:Lcom/zte/regex/Pattern$Qtype;

    sget-object v2, Lcom/zte/regex/Pattern$Qtype;->POSSESSIVE:Lcom/zte/regex/Pattern$Qtype;

    sget-object v3, Lcom/zte/regex/Pattern$Qtype;->INDEPENDENT:Lcom/zte/regex/Pattern$Qtype;

    filled-new-array {v0, v1, v2, v3}, [Lcom/zte/regex/Pattern$Qtype;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 2496
    new-instance v0, Lcom/zte/regex/Pattern$Qtype;

    const-string v1, "GREEDY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zte/regex/Pattern$Qtype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/regex/Pattern$Qtype;->GREEDY:Lcom/zte/regex/Pattern$Qtype;

    new-instance v0, Lcom/zte/regex/Pattern$Qtype;

    const-string v1, "LAZY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/zte/regex/Pattern$Qtype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/regex/Pattern$Qtype;->LAZY:Lcom/zte/regex/Pattern$Qtype;

    new-instance v0, Lcom/zte/regex/Pattern$Qtype;

    const-string v1, "POSSESSIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/zte/regex/Pattern$Qtype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/regex/Pattern$Qtype;->POSSESSIVE:Lcom/zte/regex/Pattern$Qtype;

    new-instance v0, Lcom/zte/regex/Pattern$Qtype;

    const-string v1, "INDEPENDENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/zte/regex/Pattern$Qtype;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zte/regex/Pattern$Qtype;->INDEPENDENT:Lcom/zte/regex/Pattern$Qtype;

    .line 2495
    invoke-static {}, Lcom/zte/regex/Pattern$Qtype;->$values()[Lcom/zte/regex/Pattern$Qtype;

    move-result-object v0

    sput-object v0, Lcom/zte/regex/Pattern$Qtype;->$VALUES:[Lcom/zte/regex/Pattern$Qtype;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
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

    .line 2495
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zte/regex/Pattern$Qtype;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 2495
    const-class v0, Lcom/zte/regex/Pattern$Qtype;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zte/regex/Pattern$Qtype;

    return-object p0
.end method

.method public static values()[Lcom/zte/regex/Pattern$Qtype;
    .locals 1

    .line 2495
    sget-object v0, Lcom/zte/regex/Pattern$Qtype;->$VALUES:[Lcom/zte/regex/Pattern$Qtype;

    invoke-virtual {v0}, [Lcom/zte/regex/Pattern$Qtype;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zte/regex/Pattern$Qtype;

    return-object v0
.end method
