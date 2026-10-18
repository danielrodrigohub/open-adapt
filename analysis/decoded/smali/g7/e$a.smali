.class public final Lg7/e$a;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lg7/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg7/e;->a(Ll7/a;)Lg7/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg7/q<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic h:Le7/i;

.field public final synthetic i:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Le7/i;Ljava/lang/reflect/Type;)V
    .locals 0

    iput-object p1, p0, Lg7/e$a;->h:Le7/i;

    iput-object p2, p0, Lg7/e$a;->i:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final construct()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lg7/e$a;->h:Le7/i;

    invoke-interface {v0}, Le7/i;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
