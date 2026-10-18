.class public final Lm9/w$b;
.super Lrd/o;
.source "SettingsFragment.kt"

# interfaces
.implements Lqd/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm9/w;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrd/o;",
        "Lqd/a<",
        "Ljava/util/ArrayList<",
        "+",
        "Lu8/g;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic h:Lm9/w;


# direct methods
.method public constructor <init>(Lm9/w;)V
    .locals 0

    iput-object p1, p0, Lm9/w$b;->h:Lm9/w;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lrd/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lm9/w$b;->h:Lm9/w;

    sget-object v1, Lm9/w;->K0:Lm9/w$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method
