.class public final La5/d$c;
.super Lz4/m;
.source "CeaDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public l:Lq3/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/h$a<",
            "La5/d$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/h$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/h$a<",
            "La5/d$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lz4/m;-><init>()V

    .line 2
    iput-object p1, p0, La5/d$c;->l:Lq3/h$a;

    return-void
.end method


# virtual methods
.method public final o()V
    .locals 1

    .line 1
    iget-object v0, p0, La5/d$c;->l:Lq3/h$a;

    check-cast v0, Ln3/x;

    .line 2
    iget-object v0, v0, Ln3/x;->c:Ljava/lang/Object;

    check-cast v0, La5/d;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lz4/m;->p()V

    .line 4
    iget-object v0, v0, La5/d;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method
