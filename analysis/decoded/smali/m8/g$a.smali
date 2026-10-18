.class public final Lm8/g$a;
.super Lrd/o;
.source "FetchProfileRepository.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm8/g;->a(Lf8/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Ljava/lang/Throwable;",
        "Lfd/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final h:Lm8/g$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm8/g$a;

    invoke-direct {v0}, Lm8/g$a;-><init>()V

    sput-object v0, Lm8/g$a;->h:Lm8/g$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lp4/h;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p1, Lfd/o;->a:Lfd/o;

    return-object p1
.end method
