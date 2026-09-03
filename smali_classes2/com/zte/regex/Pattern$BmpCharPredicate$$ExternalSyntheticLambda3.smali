.class public final synthetic Lcom/zte/regex/Pattern$BmpCharPredicate$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/zte/regex/Pattern$BmpCharPredicate;


# instance fields
.field public final synthetic f$0:Lcom/zte/regex/Pattern$BmpCharPredicate;

.field public final synthetic f$1:Lcom/zte/regex/Pattern$CharPredicate;


# direct methods
.method public synthetic constructor <init>(Lcom/zte/regex/Pattern$BmpCharPredicate;Lcom/zte/regex/Pattern$CharPredicate;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zte/regex/Pattern$BmpCharPredicate$$ExternalSyntheticLambda3;->f$0:Lcom/zte/regex/Pattern$BmpCharPredicate;

    iput-object p2, p0, Lcom/zte/regex/Pattern$BmpCharPredicate$$ExternalSyntheticLambda3;->f$1:Lcom/zte/regex/Pattern$CharPredicate;

    return-void
.end method


# virtual methods
.method public final is(I)Z
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/zte/regex/Pattern$BmpCharPredicate$$ExternalSyntheticLambda3;->f$0:Lcom/zte/regex/Pattern$BmpCharPredicate;

    iget-object p0, p0, Lcom/zte/regex/Pattern$BmpCharPredicate$$ExternalSyntheticLambda3;->f$1:Lcom/zte/regex/Pattern$CharPredicate;

    invoke-static {v0, p0, p1}, Lcom/zte/regex/Pattern$BmpCharPredicate;->lambda$union$2(Lcom/zte/regex/Pattern$BmpCharPredicate;Lcom/zte/regex/Pattern$CharPredicate;I)Z

    move-result p0

    return p0
.end method
