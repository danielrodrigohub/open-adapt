.class public final Lm8/c;
.super Ljava/lang/Object;
.source "DataOptRepository.kt"

# interfaces
.implements Lm8/b;


# static fields
.field public static final b:Lm8/c;

.field public static final c:Lfd/h;

.field public static final d:Lfd/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm8/c;

    invoke-direct {v0}, Lm8/c;-><init>()V

    sput-object v0, Lm8/c;->b:Lm8/c;

    .line 1
    sget-object v0, Lm8/c$a;->h:Lm8/c$a;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Lm8/c;->c:Lfd/h;

    .line 2
    sget-object v0, Lm8/c$b;->h:Lm8/c$b;

    invoke-static {v0}, Landroidx/lifecycle/o;->x(Lqd/a;)Lfd/d;

    move-result-object v0

    check-cast v0, Lfd/h;

    sput-object v0, Lm8/c;->d:Lfd/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljd/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lm8/c;->c:Lfd/h;

    invoke-virtual {v0}, Lfd/h;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb8/a;

    .line 2
    invoke-interface {v0, p1}, Lb8/a;->a(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
