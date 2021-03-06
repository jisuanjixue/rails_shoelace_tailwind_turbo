# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: true
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/site_ruby/all/site_ruby.rbi
#
# site_ruby-3.1.0

module Gem
end
class Gem::Security::Policy
  def check_cert(signer, issuer, time); end
  def check_chain(chain, time); end
  def check_data(public_key, digest, signature, data); end
  def check_key(signer, key); end
  def check_root(chain, time); end
  def check_trust(chain, digester, trust_dir); end
  def initialize(name, policy = nil, opt = nil); end
  def inspect; end
  def name; end
  def only_signed; end
  def only_signed=(arg0); end
  def only_trusted; end
  def only_trusted=(arg0); end
  def subject(certificate); end
  def to_s; end
  def verify(chain, key = nil, digests = nil, signatures = nil, full_name = nil); end
  def verify_chain; end
  def verify_chain=(arg0); end
  def verify_data; end
  def verify_data=(arg0); end
  def verify_root; end
  def verify_root=(arg0); end
  def verify_signatures(spec, digests, signatures); end
  def verify_signer; end
  def verify_signer=(arg0); end
  include Gem::UserInteraction
end
module Gem::Security
  def self.alt_name_or_x509_entry(certificate, x509_entry); end
  def self.create_cert(subject, key, age = nil, extensions = nil, serial = nil); end
  def self.create_cert_email(email, key, age = nil, extensions = nil); end
  def self.create_cert_self_signed(subject, key, age = nil, extensions = nil, serial = nil); end
  def self.create_digest(algorithm = nil); end
  def self.create_key(algorithm); end
  def self.email_to_name(email_address); end
  def self.get_public_key(key); end
  def self.re_sign(expired_certificate, private_key, age = nil, extensions = nil); end
  def self.reset; end
  def self.sign(certificate, signing_key, signing_cert, age = nil, extensions = nil, serial = nil); end
  def self.trust_dir; end
  def self.trusted_certificates(&block); end
  def self.write(pemmable, path, permissions = nil, passphrase = nil, cipher = nil); end
end
class Gem::Security::TrustDir
  def cert_path(certificate); end
  def dir; end
  def each_certificate; end
  def initialize(dir, permissions = nil); end
  def issuer_of(certificate); end
  def load_certificate(certificate_file); end
  def name_path(name); end
  def trust_cert(certificate); end
  def verify; end
end
class Gem::Security::Signer
  def cert_chain; end
  def cert_chain=(arg0); end
  def digest_algorithm; end
  def digest_name; end
  def extract_name(cert); end
  def initialize(key, cert_chain, passphrase = nil, options = nil); end
  def key; end
  def key=(arg0); end
  def load_cert_chain; end
  def options; end
  def re_sign_key(expiration_length: nil); end
  def self.re_sign_cert(expired_cert, expired_cert_path, private_key); end
  def sign(data); end
  include Gem::UserInteraction
end
class Gem::Security::Exception < Gem::Exception
end
class Gem::Package::DigestIO
  def digests; end
  def initialize(io, digests); end
  def self.wrap(io, digests); end
  def write(data); end
end
class Gem::Package::Source
end
class Gem::Package::FileSource < Gem::Package::Source
  def initialize(path); end
  def path; end
  def present?; end
  def start; end
  def with_read_io(&block); end
  def with_write_io(&block); end
end
class Gem::Package::IOSource < Gem::Package::Source
  def initialize(io); end
  def io; end
  def path; end
  def present?; end
  def start; end
  def with_read_io; end
  def with_write_io; end
end
class Gem::Package::Old < Gem::Package
  def contents; end
  def extract_files(destination_dir); end
  def file_list(io); end
  def initialize(gem, security_policy); end
  def read_until_dashes(io); end
  def skip_ruby(io); end
  def spec; end
  def verify; end
end
class Gem::Package::TarHeader
  def ==(other); end
  def calculate_checksum(header); end
  def checksum; end
  def devmajor; end
  def devminor; end
  def empty?; end
  def gid; end
  def gname; end
  def header(checksum = nil); end
  def initialize(vals); end
  def linkname; end
  def magic; end
  def mode; end
  def mtime; end
  def name; end
  def oct(num, len); end
  def prefix; end
  def self.from(stream); end
  def self.oct_or_256based(str); end
  def self.strict_oct(str); end
  def size; end
  def to_s; end
  def typeflag; end
  def uid; end
  def uname; end
  def update_checksum; end
  def version; end
end
class Gem::Package::TarReader::Entry
  def bytes_read; end
  def check_closed; end
  def close; end
  def closed?; end
  def directory?; end
  def eof?; end
  def file?; end
  def full_name; end
  def getc; end
  def header; end
  def initialize(header, io); end
  def length; end
  def pos; end
  def read(len = nil); end
  def readpartial(maxlen = nil, outbuf = nil); end
  def rewind; end
  def size; end
  def symlink?; end
end
class Gem::Package::TarReader
  def close; end
  def each; end
  def each_entry; end
  def initialize(io); end
  def rewind; end
  def seek(name); end
  def self.new(io); end
  include Enumerable
end
class Gem::Package::TarReader::UnexpectedEOF < StandardError
end
class Gem::Package::TarWriter
  def add_file(name, mode); end
  def add_file_digest(name, mode, digest_algorithms); end
  def add_file_signed(name, mode, signer); end
  def add_file_simple(name, mode, size); end
  def add_symlink(name, target, mode); end
  def check_closed; end
  def close; end
  def closed?; end
  def flush; end
  def initialize(io); end
  def mkdir(name, mode); end
  def self.new(io); end
  def split_name(name); end
end
class Gem::Package::TarWriter::FileOverflow < StandardError
end
class Gem::Package::TarWriter::BoundedStream
  def initialize(io, limit); end
  def limit; end
  def write(data); end
  def written; end
end
class Gem::Package::TarWriter::RestrictedStream
  def initialize(io); end
  def write(data); end
end
class Gem::Package
  def add_checksums(tar); end
  def add_contents(tar); end
  def add_files(tar); end
  def add_metadata(tar); end
  def build(skip_validation = nil, strict_validation = nil); end
  def build_time; end
  def build_time=(arg0); end
  def checksums; end
  def contents; end
  def copy_to(path); end
  def data_mode; end
  def data_mode=(arg0); end
  def digest(entry); end
  def dir_mode; end
  def dir_mode=(arg0); end
  def extract_files(destination_dir, pattern = nil); end
  def extract_tar_gz(io, destination_dir, pattern = nil); end
  def file_mode(mode); end
  def files; end
  def gem; end
  def gzip_to(io); end
  def initialize(gem, security_policy); end
  def install_location(filename, destination_dir); end
  def load_spec(entry); end
  def normalize_path(pathname); end
  def open_tar_gz(io); end
  def prog_mode; end
  def prog_mode=(arg0); end
  def read_checksums(gem); end
  def security_policy; end
  def security_policy=(arg0); end
  def self.build(spec, skip_validation = nil, strict_validation = nil, file_name = nil); end
  def self.new(gem, security_policy = nil); end
  def self.raw_spec(path, security_policy = nil); end
  def setup_signer(signer_options: nil); end
  def spec; end
  def spec=(arg0); end
  def verify; end
  def verify_checksums(digests, checksums); end
  def verify_entry(entry); end
  def verify_files(gem); end
  def verify_gz(entry); end
  include Gem::UserInteraction
end
class Gem::Package::Error < Gem::Exception
end
class Gem::Package::FormatError < Gem::Package::Error
  def initialize(message, source = nil); end
  def path; end
end
class Gem::Package::PathError < Gem::Package::Error
  def initialize(destination, destination_dir); end
end
class Gem::Package::SymlinkError < Gem::Package::Error
  def initialize(name, destination, destination_dir); end
end
class Gem::Package::NonSeekableIO < Gem::Package::Error
end
class Gem::Package::TooLongFileName < Gem::Package::Error
end
class Gem::Package::TarInvalidError < Gem::Package::Error
end
