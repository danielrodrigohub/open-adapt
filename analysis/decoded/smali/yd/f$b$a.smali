.class public final Lyd/f$b$a;
.super Lrd/o;
.source "Regex.kt"

# interfaces
.implements Lqd/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyd/f$b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/l<",
        "Ljava/lang/Integer;",
        "Lyd/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lyd/f$b;


# direct methods
.method public constructor <init>(Lyd/f$b;)V
    .locals 0

    iput-object p1, p0, Lyd/f$b$a;->h:Lyd/f$b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lyd/f$b$a;->h:Lyd/f$b;

    invoke-virtual {v0, p1}, Lyd/f$b;->get(I)Lyd/c;

    move-result-object p1

    return-object p1
.end method
