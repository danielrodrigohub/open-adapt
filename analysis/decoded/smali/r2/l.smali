.class public abstract Lr2/l;
.super Ljava/lang/Object;
.source "DiskCacheStrategy.java"


# static fields
.field public static final a:Lr2/l$a;

.field public static final b:Lr2/l$b;

.field public static final c:Lr2/l$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lr2/l$a;

    invoke-direct {v0}, Lr2/l$a;-><init>()V

    sput-object v0, Lr2/l;->a:Lr2/l$a;

    .line 2
    new-instance v0, Lr2/l$b;

    invoke-direct {v0}, Lr2/l$b;-><init>()V

    sput-object v0, Lr2/l;->b:Lr2/l$b;

    .line 3
    new-instance v0, Lr2/l$c;

    invoke-direct {v0}, Lr2/l$c;-><init>()V

    sput-object v0, Lr2/l;->c:Lr2/l$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Z
.end method

.method public abstract b()Z
.end method

.method public abstract c(Lp2/a;)Z
.end method

.method public abstract d(ZLp2/a;Lp2/c;)Z
.end method
